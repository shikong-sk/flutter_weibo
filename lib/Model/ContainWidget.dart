import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_html/flutter_html.dart';
import '../Core/DateConvert.dart';
import '../Json/HomeModel.dart' as HomeLines;

import '../Model/IconFont.dart';

import '../Model/Loading.dart';
import '../Model/RouterAnimation.dart';

import '../config/colors.dart';
import '../config/string.dart';

import '../Json/ChannelList.dart';

import '../Json/Contain.dart';
import '../Json/ContainLbs.dart' hide Pics;

class ContainWidget extends StatefulWidget {
  final Channel channel;
  final item;
  final Cards card;
  final Statuses statuses;
  ContainWidget({Key key, this.channel, this.item, this.card, this.statuses})
      : super(key: key);

  @override
  _ContainWidgetState createState() => _ContainWidgetState();
}

class _ContainWidgetState extends State<ContainWidget> {
  Channel channel;
  Cards card;
  Statuses statuses;
  var item;

  var data;

  @override
  void initState() {
    super.initState();
    channel = widget.channel;
    item = widget.item;
    card = widget.card;
    statuses = widget.statuses;
    if (item == null) {
      if (channel.gid == 'lbs') {
        data = statuses;
      } else {
        data = card.mblog;
      }
    } else {
      data = item;
    }

    // print(data.pics.runtimeType);
  }

  @override
  Widget build(BuildContext context) {
    // print(data.repostsCount is int);
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
        color: item == null
            ? data.pics == null ? Colors.white : GpColors.keyboardPressBgColor
            : data.thumbnailPic == null
                ? Colors.white
                : GpColors.keyboardPressBgColor,
        child: item == null
            ? data.pics == null
                ? Container()
                : Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: ImageGroupView(
                        data.pics, data.mid), // 引入消息id索引，避免Hero组件tag冲突
                  )
            : data.picUrls == null
                ? Container()
                : Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: ImageGroupView(data.picUrls, data.mid),
                  ),
      ),
      Container(
        child: CommentWidget(
          data: data,
          // repostsCount: data.repostsCount is int
          //     ? data.repostsCount
          //     : int.parse(data.repostsCount), // 转发
          // commentsCount: data.commentsCount is int
          //     ? data.commentsCount
          //     : int.parse(data.commentsCount), // 评论
          // attitudesCount: data.attitudesCount is int
          //     ? data.attitudesCount
          //     : int.parse(data.attitudesCount), // 点赞
          repostsCount: data.repostsCount.toString(), // 转发
          commentsCount: data.commentsCount.toString(), // 评论
          attitudesCount: data.attitudesCount.toString(), // 点赞
        ),
      ),
    ]);
  }
}

// 头像组件

class BorderAvatarImage extends StatelessWidget {
  @required
  final String avatarUrl;
  final double width;
  final double height;
  final Border border;
  BorderAvatarImage(
      {this.avatarUrl, this.width = 35, this.height = 35, this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(width / 2),
        ),
        border: border ??
            Border.all(width: 1, color: GpColors.dialogCancelBtnTextColor),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(width / 2),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: avatarUrl,
        ),
      ),
    );
  }
}

// 图片九宫格 + 预览组件

class ImageGroupView extends StatelessWidget {
  final List<dynamic> picList;
  final mid;
  ImageGroupView(this.picList, this.mid);

  @override
  Widget build(BuildContext context) {
    List<dynamic> picArray = [];
    if (picList == null || picList.length == 0) {
      return Container();
    } else if (picList.length > 9) {
      for (int i = 0; i < picList.length; ++i) {
        if (i > 8) {
          break;
        }
        picArray.add(picList[i]);
      }
    } else if (picList.length == 1) {
      return ImageView(
        imgUrl: picList.runtimeType.toString() == 'List<Pic_urls>'?picList[0].thumbnailPic:picList[0].url,
        fit: BoxFit.scaleDown,
        picUrls: picList,
        mid: mid,
      );
    } else {
      for (int i = 0; i < picList.length; ++i) {
        picArray.add(picList[i]);
      }
    }
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: picArray.map((pic) {
        return picList.runtimeType.toString() == 'List<Pic_urls>'
            ? _getImage(pic.thumbnailPic, picList, this.mid)
            : _getImage(pic.url, picList, this.mid);
      }).toList(),
    );
  }

  Widget _getImage(String picUrl, List<dynamic> pics, var mid) {
    return ImageView(
      imgUrl: picUrl,
      fit: BoxFit.cover,
      picUrls: pics,
      mid: mid,
    );
  }
}

class ImageView extends StatelessWidget {
  final imgUrl;
  final List<dynamic> picUrls;
  final BoxFit fit;
  final mid;

  ImageView({this.imgUrl, this.fit, this.picUrls, this.mid});

  @override
  Widget build(BuildContext context) {
    List<String> array = [];
    // print(this.mid);
    for (var pic in picUrls) {
      picUrls.runtimeType.toString() == 'List<Pic_urls>'
          ? array.add(pic.thumbnailPic)
          : array.add(pic.url);
    }
    // var arrayNum = 3.0;
    // if(array.length==2)
    // {
    //   arrayNum = 2.0;
    // }
    // final itemWidth = (MediaQuery.of(context).size.width - 30.0) / arrayNum;
    final itemWidth = (MediaQuery.of(context).size.width - 30.0) / 3.0;
    final double minHeight = (picUrls.length >= 3) ? itemWidth : 0.0;
    final double maxHeight = (picUrls.length >= 3) ? itemWidth : 200.0;
    final double minWidth = (picUrls.length >= 3) ? itemWidth : 0.0;
    final double maxWidth = (picUrls.length >= 3)
        ? itemWidth
        : MediaQuery.of(context).size.width / 2;
//    print(
//        '?>>>>>>>>minHeight:$minHeight  maxHeight:$maxHeight minWidth:$minWidth maxWidth:$maxWidth count:${picUrls.length}');
    return GestureDetector(
      onTap: () {
        Router.push(
            context,
            ImageViewer(
              picUrls: array,
              imageUrl: imgUrl,
              mid: mid,
            ));
      },
      child: Container(
        constraints: BoxConstraints(
            minWidth: minWidth,
            maxWidth: maxWidth,
            minHeight: minHeight,
            maxHeight: maxHeight),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Hero(
            tag: StringUtil.getLargeImageUrlString(imgUrl) +
                mid.toString(), // 替换高清图链接
            child: _getChildImageView(maxHeight),
          ),
        ),
      ),
    );
  }

  Widget _getChildImageView(double maxHeight) {
    return picUrls.length >= 3
        ? CachedNetworkImage(
            // imageUrl: StringUtil.getBmiddleImageUrlString(imgUrl),
            imageUrl: imgUrl,
            fit: fit,
            height: maxHeight,
          )
        : CachedNetworkImage(
            // imageUrl: StringUtil.getBmiddleImageUrlString(imgUrl),
            imageUrl: imgUrl,
            fit: fit,
          );
  }
}

class ImageViewer extends StatefulWidget {
  @required
  final List<String> picUrls;
  final String imageUrl;
  final mid;
  ImageViewer({this.picUrls, this.imageUrl, this.mid});

  @override
  _ImageViewerState createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  PageController _pageController;
  int _curIndex = 0;

  @override
  void initState() {
    super.initState();
    _curIndex = widget.picUrls.indexOf(widget.imageUrl);
//    print('>>>>>>>下标是：${widget.picUrls.indexOf(widget.imageUrl)}');
    _pageController = PageController(initialPage: _curIndex);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        String largeImageUrl =
            StringUtil.getLargeImageUrlString(widget.picUrls[index]);
        return GestureDetector(
          onTap: () => Router.pop(context),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.transparent,
            child: Center(
              child: SingleChildScrollView(
                child: Hero(
                  tag: largeImageUrl + widget.mid.toString(),
                  child: CachedNetworkImage(
                    imageUrl: largeImageUrl,
                    fit: BoxFit.contain,
                    placeholder: (context, url) => new Loading(),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: widget.picUrls.length,
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      physics: PageScrollPhysics(parent: BouncingScrollPhysics()),
    );
  }
}

class CommentWidget extends StatelessWidget {
  final data;
  final String repostsCount;
  final String commentsCount;
  final String attitudesCount;

  CommentWidget(
      {@required this.data,
      this.repostsCount = '0',
      this.commentsCount = '0',
      this.attitudesCount = '0'});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
//      color: normalColor,
        border: BorderDirectional(
          top: BorderSide(
              color: GpColors.appbarLineColor,
              width: 1.0,
              style: BorderStyle.solid),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _commonRow(IconF.resonserate,
              repostsCount == '0' ? '转发' : '$repostsCount', context),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/detail',
                  arguments: {"data": data});
            },
            child: _commonRow(IconF.comments,
                commentsCount == '0' ? '评论' : '$commentsCount', context),
          ),
          _commonRow(IconF.good,
              attitudesCount == '0' ? '点赞' : '$attitudesCount', context),
        ],
      ),
    );
  }

  Widget _commonRow(IconData data, String text, BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          data,
          size: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Text(
            text,
            style: Theme.of(context).textTheme.body1,
          ),
        ),
      ],
    );
  }
}
