import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ZMRefreshIndicator extends StatelessWidget {
  final Widget child;

  //  if you pass not a sliver,it will throw error
  final Widget header;
  final Widget footer;

  // This bool will affect whether or not to have the function of drop-up load.
  final bool enablePullUp;
  final bool enablePullDown;
  final VoidCallback onRefresh;
  final VoidCallback onLoading;
  final RefreshController controller;
  final TextStyle styles;

  ZMRefreshIndicator({
    Key key,
    @required this.controller,
    this.child,
    this.header,
    this.footer,
    this.enablePullDown: false, //是否显示头部刷新控件,默认为false
    this.enablePullUp: true, // 是否显示底部刷新控件，默认true
    this.onRefresh,
    this.onLoading,
    this.styles,
  });

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: enablePullDown,
      enablePullUp: enablePullUp,
      header: header ??
          WaterDropHeader(
            complete: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.done,
                  color: Colors.grey,
                ),
                Container(
                  width: 15.0,
                ),
                Text(
                  '刷新成功',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
      footer: footer ??
          CustomFooter(
            builder: (BuildContext context, LoadStatus mode) {
              Widget body;
              if (mode == LoadStatus.idle) {
                body = Text(
                  "上拉一下，发现新天地哦",
                  style: styles ?? TextStyle(fontSize: 13),
                );
              } else if (mode == LoadStatus.loading) {
                body = Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CupertinoActivityIndicator(),
                    Text("等待才有期待")
                  ],
                );
              } else if (mode == LoadStatus.failed) {
                body = Text(
                  "失败是成功之母，再试一次吧！",
                  style: styles ?? TextStyle(fontSize: 13),
                );
              } else if (mode == LoadStatus.canLoading) {
                body = Text(
                  "放手才会得到更多哦~",
                  style: styles ?? TextStyle(fontSize: 13),
                );
              } else {
                body = Text(
                  "我是有底线的哦~",
                  style: styles ?? TextStyle(fontSize: 13),
                );
              }
              return Container(
                height: 55.0,
                child: Center(child: body),
              );
            },
          ),
      controller: controller,
      onRefresh: onRefresh,
      onLoading: onLoading,
      child: child,
    );
  }
}
