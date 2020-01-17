import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_text/extended_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_html/flutter_html.dart';
import '../Core/DateConvert.dart';
import '../Core/ServiceHelper.dart';
import '../Json/Hotflow.dart';
import '../Model/ContainWidget.dart';
import '../Model/IconFont.dart';

import '../Model/Loading.dart';
import '../Model/RouterAnimation.dart';

import '../config/colors.dart';
import '../config/string.dart';

import '../config/API.dart';
import '../Json/ChannelList.dart';

import '../Json/Contain.dart';
import '../Json/ContainLbs.dart' hide Pics;

class DetailPage extends StatefulWidget {
  final arguments;
  DetailPage({@required this.arguments, Key key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xfffbfbfb),
        title: Text(
          '评论',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: DetailWidget(
                data: widget.arguments['data'],
              ),
            ),
            Comment(widget.arguments['data'].id)
          ],
        ),
      ),
    );
  }
}

class DetailWidget extends StatelessWidget {
  final data;
  const DetailWidget({@required this.data, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(data.runtimeType.toString() == 'Statusess');
    return Column(children: <Widget>[
      Row(
        children: <Widget>[
          BorderAvatarImage(
            avatarUrl: data.user.profileImageUrl,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    data.user.screenName,
                    style: Theme.of(context)
                        .textTheme
                        .body1
                        .copyWith(color: GpColors.titleColor),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        DateTimeUtil.getTimeDuration(data.createdAt),
                        style: Theme.of(context)
                            .textTheme
                            .overline
                            .copyWith(color: GpColors.detailColor),
                      ),
                      if (data.source.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: RichText(
                            text: TextSpan(
                              text: '来自',
                              style: Theme.of(context)
                                  .textTheme
                                  .overline
                                  .copyWith(color: GpColors.detailColor),
                              children: <TextSpan>[
                                TextSpan(
                                  text: StringUtil.getSourceString(
                                      data.source), //
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline
                                      .copyWith(color: GpColors.sourceColor),
                                ),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Container(
        width: double.infinity,
        child: Html(data: data.text),
      ),
      Container(
        padding: EdgeInsets.only(top: 0, bottom: 0),
        color: data.runtimeType.toString() == 'Statusess'
            ? data.picUrls == null
                ? Colors.white
                : GpColors.keyboardPressBgColor
            : data.pics == null ? Colors.white : GpColors.keyboardPressBgColor,
        child: data.runtimeType.toString() == 'Statusess'
            ? data.picUrls == null
                ? Container()
                : Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: ImageGroupView(
                        data.picUrls, data.mid), // 引入消息id索引，避免Hero组件tag冲突
                  )
            : data.pics == null
                ? Container()
                : Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: ImageGroupView(
                        data.pics, data.mid), // 引入消息id索引，避免Hero组件tag冲突
                  ),
      ),
    ]);
  }
}

class Comment extends StatefulWidget {
  final id;

  Comment(this.id, {Key key}) : super(key: key);

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  var id;
  var comment = API.hotflow.split('%s');
  List<Datas> datas = [];

  // 获取评论
  getComment(id) async {
    compute(ServiceHelper.get, comment[0] + id + comment[1] + id).then((json) {
      if (HotFlow.fromJson(json).ok == 0) {
        this.datas = [];
      } else {
        this.datas = HotFlow.fromJson(json).data.datas;
      }
      setState(() {
        // print(datas);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    id = widget.id.toString();
    getComment(id);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: this.datas.isEmpty
          ? <Widget>[
              Container(
                child: Center(
                  child: Text(
                    '暂无评论',
                    style: Theme.of(context)
                        .textTheme
                        .overline
                        .copyWith(color: GpColors.detailColor, fontSize: 14),
                  ),
                ),
              ),
            ]
          : this
              .datas
              .map((Datas data) {
                return Card(
                  child: Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        BorderAvatarImage(
                          avatarUrl: data.user.profileImageUrl,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  data.user.screenName,
                                  style: Theme.of(context)
                                      .textTheme
                                      .body1
                                      .copyWith(color: GpColors.titleColor),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      DateTimeUtil.getTimeDuration(
                                          data.createdAt),
                                      style: Theme.of(context)
                                          .textTheme
                                          .overline
                                          .copyWith(
                                              color: GpColors.detailColor),
                                    ),
                                    if (data.source.isNotEmpty)
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: RichText(
                                          text: TextSpan(
                                            text: '来自',
                                            style: Theme.of(context)
                                                .textTheme
                                                .overline
                                                .copyWith(
                                                    color:
                                                        GpColors.detailColor),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text:
                                                    StringUtil.getSourceString(
                                                        data.source), //
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .overline
                                                    .copyWith(
                                                        color: GpColors
                                                            .sourceColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      child: Html(data: data.text),
                    ),
                  ]),
                );
              })
              .cast<Widget>()
              .toList(),
    );
  }
}
