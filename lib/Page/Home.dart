import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_shikong/Core/SPHelper.dart';

import '../Core/ServiceHelper.dart';
import '../Core/ServiceManager.dart';
import '../Json/HomeModel.dart' as HomeLines;
import '../Model/ContainWidget.dart';

import '../Model/Loading.dart';
import '../Model/RefreshIndicator.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/API.dart';
import '../Json/ChannelList.dart';

import '../Json/Contain.dart';
import '../Json/ContainLbs.dart' hide Pics;

import '../Core/SPHelper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _mainTabController;

  List<Widget> _tabs = [
    Text('关注'),
    Text('热门'),
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      this._mainTabController = TabController(
        length: this._tabs.length,
        vsync: this,
        initialIndex: 1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          elevation: 0.5,
          title: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.all(8),
            // isScrollable: true,
            controller: this._mainTabController,
            tabs: this._tabs,
          ),
        ),
      ),
      body: TabBarView(
        controller: this._mainTabController,
        children: <Widget>[
          HomeLine(),
          Hots(),
        ],
      ),
    );
  }
}

class HomeLine extends StatefulWidget {
  HomeLine({Key key}) : super(key: key);

  @override
  _HomeLineState createState() => _HomeLineState();
}

class _HomeLineState extends State<HomeLine> {
  RefreshController _refreshController = RefreshController();
  int page = 1;
  List datas = [];
  String token;

  getData(page) async {
    SpHelper sp = await SpHelper.getInstance();
    this.token = sp.getAccessToken();
    print(token);
    ServiceManager.getHomeTimeLine(token, 10, page).then((data) {
      // print(data.items);
      setState(() {
        this.datas.addAll(data.statusess);
      });
      // datas.forEach((x){
      //   print(x.picUrls);
      // });
    });
  }

  @override
  void initState() {
    super.initState();
    getData(page);
  }

  @override
  Widget build(BuildContext context) {
    return this.datas == null
        ? Loading()
        : ZMRefreshIndicator(
            enablePullDown: true,
            onRefresh: () {
              ServiceManager.getHomeTimeLine(this.token, 10, 1).then((data) {
                // print(data.items);
                setState(() {
                  this.datas = data.statusess;
                  this.page = 1;
                  this._refreshController.refreshCompleted();
                });
                // datas.forEach((x){
                //   print(x.picUrls);
                // });
              });
            },
            onLoading: () {
              getData(page).then((x) {
                setState(() {
                  this.page += 1;
                  this._refreshController.refreshCompleted();
                });
              });
            },
            controller: this._refreshController,
            child: ListView.builder(
              itemCount: datas.length,
              itemBuilder: (context, index) {
                return ContainWidget(
                  item: datas[index],
                );
                // return Container();
              },
            ),
          );
  }
}

class Hots extends StatefulWidget {
  Hots({Key key}) : super(key: key);

  @override
  _HotsState createState() => _HotsState();
}

class _HotsState extends State<Hots> with TickerProviderStateMixin {
  TabController _tabController;

  List<Channel> channels = <Channel>[];

  Map<String, int> pages = {};

  Map<String, RefreshController> refreshController = {};

  Map<dynamic, dynamic> contain = {};

  // 获取频道列表
  getChannel() async {
    // this.channels = await getChannel();
    await ServiceHelper.get(API.channelList).then((json) {
      setState(() {
        this.channels = ChannelList.fromJson(json).data.channel;
        this._tabController =
            TabController(length: this.channels.length, vsync: this);
      });
    });
    // this.channels.map((channel) async {
    //   this.contain[channel.name] == null
    //       ? this.contain[channel.name] = await getContain(channel, 1)
    //       : this.contain[channel.name].addAll(getContain(channel, 1));
    // });

    // Future.forEach(this.channels, (channel) async {
    //   print(channel.name);
    //   this.contain[channel.name] == null
    //       ? this.contain[channel.name] = await getContain(channel, 1)
    //       : this.contain[channel.name].addAll(getContain(channel, 1));
    //   if (this.refreshController[channel.name] == null) {
    //     this.refreshController[channel.name] = RefreshController();
    //     this.pages[channel.name] = 1;
    //   }
    //   setState(() {
    //     // print(this.contain);
    //   });
    // });

    this.channels.forEach((channel) async {
      print(channel.name);
      this.contain[channel.name] == null
          ? this.contain[channel.name] = await getContain(channel, 1)
          : this.contain[channel.name].addAll(getContain(channel, 1));
      if (this.refreshController[channel.name] == null) {
        this.refreshController[channel.name] = RefreshController();
        this.pages[channel.name] = 1;
      }
      setState(() {});
      // print(this.contain[channel.name][0].mblog.text);
    });
  }

  // 获取内容
  getContain(channel, page) async {
    // final pageUrl = '&page=' + page.toString();
    final pageUrl = '&since_id=' + page.toString() + '&page=' + page.toString();
    if (channel.gid == 'lbs')
      return compute(ServiceHelper.get, API.lbs + pageUrl).then((json) {
        return ContainLbs.fromJson(json).data.statuses;
      });
    print(API.contain + channel.gid + pageUrl);
    return compute(ServiceHelper.get, API.contain + channel.gid + pageUrl)
        .then((json) {
      // print(json);
      // print(Contain.fromJson(json).data.cards);
      // Contain.fromJson(json).data.cards.forEach((x){
      //   print(x.mblog.id);
      // });
      return Contain.fromJson(json).data.cards;
    });
  }

  // ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    getChannel();
  }

  @override
  void dispose() {
    this._tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (this.channels.isEmpty) {
      return Loading();
    }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          titleSpacing: 0,
          title: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.all(8),
            isScrollable: true,
            controller: this._tabController,
            tabs: this.channels.map((channel) {
              return Tab(text: channel.name);
            }).toList(),
          ),
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: this.channels.map((channel) {
          return this.contain[channel.name] == null
              ? Loading()
              : ZMRefreshIndicator(
                  enablePullDown: true,
                  onRefresh: () async {
                    var newContain;
                    getContain(channel, 1).then((data) {
                      newContain = data;
                      setState(() {
                        this.contain[channel.name] = newContain;
                        this.pages[channel.name] = 1;
                      });
                      this.refreshController[channel.name].refreshCompleted();
                    });
                  },
                  onLoading: () async {
                    var oldDataNum;
                    var oldContain;
                    var newContain;
                    var tmp;
                    var nTmp;
                    int times = 0;
                    if (channel.gid == 'lbs') {
                      nTmp = Set<Statuses>();
                    } else {
                      nTmp = Set<Cards>();
                    }

                    oldDataNum = this.contain[channel.name].length;

                    oldContain = this.contain[channel.name];

                    print('页数：' + this.pages[channel.name].toString());

                    // newContain =
                    //     await getContain(channel, this.pages[channel.name] + 1);
                    Future.doWhile(() async {
                      times += 1;

                      await getContain(channel, (this.pages[channel.name] + 1))
                          .then((data) {
                        setState(() {
                          this.pages[channel.name] =
                              this.pages[channel.name] + 1;
                        });
                        newContain = data;
                        // this.contain[channel.name].addAll(data);
                        // tmp.addAll(newContain);
                        newContain.forEach((nData) {
                          tmp = nData;
                          var tmpId;
                          if (channel.gid == 'lbs') {
                            tmpId = tmp.mid;
                          } else {
                            tmpId = tmp.mblog.mid;
                          }
                          bool flag = true;
                          oldContain.forEach((oData) {
                            //     // this.contain[channel.name].forEach((oData) {
                            //     // setState(() {
                            if (channel.gid != 'lbs') {
                              if (oData.mblog.mid == nData.mblog.mid) {
                                //       // tmp.add(nData);
                                print('重复数据：' + oData.mblog.mid);
                                tmp = null;
                              }
                            } else {
                              if (oData.mid == nData.mid) {
                                //       // tmp.add(nData);
                                print('重复数据：' + oData.mid);
                                tmp = null;
                              }
                            }
                            //     // });
                          });
                          if (tmp != null) {
                            // setState(() {
                            //   this.contain[channel.name].add(tmp);
                            // });
                            nTmp.forEach((t) {
                              if (channel.gid == 'lbs') {
                                if (t.id == tmpId) {
                                  flag = false;
                                }
                              } else {
                                if (t.mblog.id == tmpId) {
                                  flag = false;
                                }
                              }
                            });
                            if (flag) {
                              nTmp.add(tmp);
                            }
                          }
                        });

                        // nTmp.forEach((x){
                        //   tmp = x;
                        //   var tmpNum = 0;
                        //   nTmp.forEach((y){
                        //     if(x.mblog.mid == y.mblog.mid)
                        //     {
                        //       tmpNum += 1;
                        //     }
                        //   });
                        //   if(tmpNum > 1)
                        //   {

                        //   }
                        // });
                        // print(tmp.length);

                        // tmp.forEach((t){
                        //   oldContain.remove(t);
                        // });
                        print('newContain' + '-' * 50);
                        newContain.forEach((n) {
                          if (channel.gid != 'lbs') {
                            print(n.mblog.mid);
                          } else {
                            print(n.mid);
                          }
                        });

                        print('nTmp' + '-' * 50);
                        nTmp.forEach((n) {
                          if (channel.gid != 'lbs') {
                            print(n.mblog.mid);
                          } else {
                            print(n.mid);
                          }
                        });
                      });

                      print('已爬取有效数据 ' + nTmp.toList().length.toString() + '条');
                      if (nTmp.length >= 10 || times >= 10) {
                        return false;
                      } else {
                        return true;
                      }
                    }).then((x) {
                      setState(() {
                        // this.contain[channel.name]=(tmp.toList());
                        this.contain[channel.name].addAll(nTmp.toList());
                        // print('nTmp' + '-' * 50);
                        // nTmp.forEach((n) {
                        //   print(n.mblog.mid);
                        //   this.contain[channel.name].add(n);
                        // });
                      });

                      var newDataNum = this.contain[channel.name].length;
                      // var newDataNum = tmp.length;
                      // setState(() {
                      //   this.contain[channel.name] = tmp;
                      // });
                      print('原长度：' + oldDataNum.toString());
                      print('新长度：' + newDataNum.toString());

                      if (oldDataNum < newDataNum) {
                        setState(() {
                          this.refreshController[channel.name].loadComplete();
                          // this._tabController = TabController(length: this.channels.length, vsync: this);
                          this.refreshController[channel.name] =
                              RefreshController();
                        });
                      } else {
                        setState(() {
                          this.refreshController[channel.name].loadNoData();
                          this.refreshController[channel.name] =
                              RefreshController();
                        });
                      }
                    });

                    // await newContain.map((nData) {
                    //   tmp.forEach((oData) {
                    //     if (oData.mid == nData.mid) {
                    //       tmp.remove(oData);
                    //     }
                    //     tmp.add(nData);
                    //   });
                    // });

                    // await tmp.addAll(newContain);
                    // this.contain[channel.name] = tmp;
                    // setState(() {});

                    // var newDataNum = tmp.length;

                    // print(newDataNum);

                    // if (oldDataNum < newDataNum) {
                    //   this.pages[channel.name] = this.pages[channel.name] + 1;
                    //   setState(() {
                    //     this.refreshController[channel.name].loadComplete();
                    //     // this._tabController = TabController(length: this.channels.length, vsync: this);
                    //     this.refreshController[channel.name] =
                    //         RefreshController();
                    //   });
                    // } else {
                    //   setState(() {
                    //     this.refreshController[channel.name].loadNoData();
                    //     this.refreshController[channel.name] =
                    //         RefreshController();
                    //   });
                    // }
                  },
                  controller: this.refreshController[channel.name],
                  child: ListView.separated(
                    itemCount: this.contain[channel.name].length,
                    separatorBuilder: (context, index) {
                      return Container();
                    },
                    itemBuilder: (content, index) {
                      // print(this.contain[channel.name][index].mblog.mid);
                      return Card(
                        margin: EdgeInsets.all(8),
                        child: channel.gid == 'lbs'
                            ? ContainWidget(
                                channel: channel,
                                statuses: this.contain[channel.name][index],
                              )
                            : ContainWidget(
                                channel: channel,
                                card: this.contain[channel.name][index],
                              ),
                      );
                    },
                  ),
                );
          //   return FutureBuilder(
          //     future: this.contain[channel.name],
          //     // future: getContain(channel),
          //     builder: (BuildContext context, AsyncSnapshot snapshot) {
          //       return snapshot.hasData
          //           ? prefix0.RefreshIndicator(
          //               onRefresh: () async {
          //                 setState(() {
          //                   this.contain[channel.name] = getContain(channel, 1);
          //                 });
          //               },
          //               child: ZMRefreshIndicator(
          //                 onLoading: () async {
          //                   var tmp =
          //                       getContain(channel, this.pages[channel.name] + 1);
          //                   setState(() {
          //                     this.contain[channel.name] = tmp;
          //                   });
          //                 },
          //                 controller: this.refreshController[channel.name],
          //                 child: SingleChildScrollView(
          //                   physics: NeverScrollableScrollPhysics(),
          //                   child: Column(
          //                     children: snapshot.data
          //                         .map((data) {
          //                           return Card(
          //                             margin: EdgeInsets.all(8),
          //                             child: channel.gid == 'lbs'
          //                                 ? ContainWidget(
          //                                     channel: channel,
          //                                     statuses: data,
          //                                   )
          //                                 : ContainWidget(
          //                                     channel: channel,
          //                                     card: data,
          //                                   ),
          //                           );
          //                         })
          //                         .cast<Widget>()
          //                         .toList(),
          //                   ),
          //                 ),
          //               ),
          //             )
          //           : Loading();
          //     },
          //   );
        }).toList(),
      ),
    );
  }
}
