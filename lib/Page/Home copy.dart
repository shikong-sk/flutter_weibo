import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_shikong/Core/ServiceHelper.dart';

import '../config/API.dart';
import '../Json/ChannelList.dart';

class Channel {
  final gid;
  final name;
  Channel({this.gid, this.name});

  factory Channel.fromJson(Map<String, dynamic> json) {
    return Channel(gid: json['gid'] as String, name: json['name'] as String);
  }
}

class Mblog {
  final createdAt;
  final source;
  final screenName;
  final avater;
  final text;
  final pics;
  final id;

  Mblog({
    this.createdAt,
    this.source,
    this.screenName,
    this.avater,
    this.text,
    this.pics,
    this.id,
  });

  factory Mblog.fromJson(Map<String, dynamic> json) {
    // json['mblog']['pics'] = jsonDecode(json['mblog']['pics']).cast<Map<String, dynamic>>();
    return Mblog(
      createdAt: json['mblog']['created_at'] as String,
      source: json['mblog']['source'] as String,
      screenName: json['mblog']['user']['screen_name'] as String,
      avater: json['mblog']['user']['profile_image_url'] as String,
      text: json['mblog']['text'] as String,
      pics: int.parse(json['mblog']['pic_num'].toString()) > 0
          ? json['mblog']['pics']
          : [],
      // pics:
      // json['mblog']['pics'],
      id: json['mblog']['id'] as String,
    );
  }
}

class MblogLbs {
  final createdAt;
  final source;
  final screenName;
  final avater;
  final text;
  final pics;
  final id;

  MblogLbs({
    this.createdAt,
    this.source,
    this.screenName,
    this.avater,
    this.text,
    this.pics,
    this.id,
  });

  factory MblogLbs.fromJson(Map<String, dynamic> json) {
    return MblogLbs(
      createdAt: json['created_at'] as String,
      source: json['source'] as String,
      screenName: json['user']['screen_name'] as String,
      avater: json['user']['profile_image_url'] as String,
      text: json['text'] as String,
      pics: json['pic_num'] > 0 ? json['pics'] : [],
      // pics: json['pics'],
      id: json['id'] as String,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;

  List<Tab> _tabs = <Tab>[];
  Map _tabsRes = {};
  List<Channel> channels = <Channel>[];
  List<Mblog> mblogs = <Mblog>[];

  // 获取频道列表
  Future getChannelList() async {
    try {
      Response response = await Dio().get(API.channelList,
          options: Options(responseType: ResponseType.plain));
      return parseChannel(response.data.toString());
    } catch (e) {
      print(e);
      return '';
    }
  }

  Future parseChannel(String res) async {
    final parse = await json.decode(res);
    final result = parse['data']['channel'].cast<Map<String, dynamic>>();

    this.channels =
        await result.map<Channel>((json) => Channel.fromJson(json)).toList();

    setState(() {
      this._tabs = channels.map<Tab>((Channel channel) {
        return Tab(
          text: channel.name.toString(),
          key: Key(channel.gid.toString()),
        );
      }).toList();

      _tabController = TabController(length: this._tabs.length, vsync: this);
    });
  }

  Future getContent(String gid) async {
    try {
      // print('1.被调用');
      Response response;
      if (gid == 'lbs') {
        response = await Dio().get(API.lbs,
            options: Options(responseType: ResponseType.plain));
        return compute(parseMblogLbs, response.data.toString());
      } else {
        response = await Dio().get(API.contain + gid,
            options: Options(responseType: ResponseType.plain));
        return compute(parseMblog, response.data.toString());
      }
    } catch (e) {
      this.channels.forEach((x) {
        if (x.gid == gid) {
          print(x.name + '\t' + e.toString());
        }
        setState(() {
          print(e);
        });
        return '';
      });
    }
  }

  static Future<List<Mblog>> parseMblog(String responseData) async {
    final parse = await json.decode(responseData);

    var mblogJson = parse['data']['cards'].cast<Map<String, dynamic>>();

    return mblogJson.map<Mblog>((res) => Mblog.fromJson(res)).toList();
  }

  static Future<List<MblogLbs>> parseMblogLbs(String responseData) async {
    final parse = await json.decode(responseData);

    var mblogJson = parse['data']['statuses'].cast<Map<String, dynamic>>();

    return mblogJson.map<MblogLbs>((res) => MblogLbs.fromJson(res)).toList();
  }

  ScrollController _scrollController = ScrollController();

  static getChannel() async{
    ServiceHelper.get(API.channelList).then((json){
      return ChannelList.fromJson(json);
    });
  }

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: this._tabs.length, vsync: this);
    getChannelList();
    var channel;
    channel = getChannel();
    print(channel);
  }

  @override
  Widget build(BuildContext context) {
    if (this.channels.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (this._tabs.isNotEmpty && this._tabsRes.isEmpty) {
      this._tabs.forEach((tab) {
        print(tab);
        this._tabsRes[tab] =
            getContent(this.channels[this._tabs.indexOf(tab)].gid.toString());
      });
    }

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          labelPadding: EdgeInsets.all(8),
          isScrollable: true,
          controller: this._tabController,
          tabs: this._tabs.map((Tab tab) {
            return Text(tab.text);
          }).toList(),
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: this._tabs.map((Tab tab) {
          return FutureBuilder(
            future: this._tabsRes[tab],
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? RefreshIndicator(
                      onRefresh: () async {
                        setState(() {
                          this._tabsRes[tab] = getContent(this
                              .channels[this._tabs.indexOf(tab)]
                              .gid
                              .toString());
                        });
                      },
                      child: ListView.builder(
                        controller: this._scrollController,
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return Card(
                            margin: EdgeInsets.all(5),
                            child: Material(
                              child: Ink(
                                child: InkWell(
                                  hoverColor: Color.fromARGB(80, 200, 30, 30),
                                  splashColor: Colors.blue[300],
                                  onTap: () {
                                    Navigator.pushNamed(context, '/detail',
                                        arguments: {
                                          "mblog": snapshot.data[index]
                                        });
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)),
                                              image: DecorationImage(
                                                image: NetworkImage(snapshot
                                                    .data[index].avater),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(snapshot
                                                  .data[index].screenName),
                                              this
                                                          .channels[this
                                                              ._tabs
                                                              .indexOf(tab)]
                                                          .gid ==
                                                      'lbs'
                                                  ? Text(
                                                      snapshot.data[index]
                                                              .createdAt +
                                                          '\n' +
                                                          snapshot.data[index]
                                                              .source,
                                                      overflow:
                                                          TextOverflow.clip,
                                                    )
                                                  : Text(
                                                      snapshot.data[index]
                                                              .createdAt +
                                                          '\t' +
                                                          snapshot.data[index]
                                                              .source,
                                                      overflow:
                                                          TextOverflow.clip,
                                                    )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Html(
                                        data: snapshot.data[index].text,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      snapshot.data[index].pics.length == 0
                                          ? Container()
                                          : GridView.builder(
                                              shrinkWrap: true,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                                childAspectRatio: 16 / 9,
                                                mainAxisSpacing: 2,
                                                crossAxisSpacing: 2,
                                              ),
                                              itemCount: snapshot
                                                  .data[index].pics.length,
                                              itemBuilder: (context, x) {
                                                return Container(
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return Scaffold(
                                                          body: InkWell(
                                                            onTap: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: Center(
                                                              child: Image.network(
                                                                  snapshot
                                                                          .data[
                                                                              index]
                                                                          .pics[
                                                                      x]['url']),
                                                            ),
                                                          ),
                                                        );
                                                      }));
                                                    },
                                                    child: Image.network(
                                                        snapshot.data[index]
                                                            .pics[x]['url']),
                                                  ),
                                                );
                                              },
                                            ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
            },
          );
        }).toList(),
      ),
    );
  }
}
