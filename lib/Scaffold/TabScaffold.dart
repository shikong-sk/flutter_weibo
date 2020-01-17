import 'package:flutter/material.dart';
import 'package:flutter_shikong/Model/IconFont.dart';
import 'package:flutter_shikong/Page/My.dart';

import '../Core/SPHelper.dart';

import '../Page/Home.dart';

import '../Model/Loading.dart';

class TabScaffold extends StatefulWidget {
  final index;

  TabScaffold({Key key, this.index = 0}) : super(key: key);

  _TabScaffoldState createState() => _TabScaffoldState(this.index);
}

class _TabScaffoldState extends State<TabScaffold> {
  int _currentIndex;
  _TabScaffoldState(index) {
    this._currentIndex = index;
  }

  List _bodyList = [
    HomePage(),
    Loading(),
    null,
    My(),
  ];
  @override
  void initState() {
    super.initState();
    getTokenState();
  }

  SpHelper _spHelper;
  getTokenState() async {
    this._spHelper = await SpHelper.getInstance();
    setState(() {
      print(this._spHelper.getKeys());
      print(this._spHelper.getAccessToken());
      print(this._spHelper.getUserUid());
      print(this._spHelper.getExpiresTime());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Container(
      //   height: this._currentIndex == 1 ? 60 : 55,
      //   width: this._currentIndex == 1 ? 60 : 55,
      //   padding: EdgeInsets.all(5), // 内边距 各为 5
      //   margin:
      //       EdgeInsets.only(top: this._currentIndex == 1 ? 5 : 15), // 上 外边距 为 5
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(40), // 圆形盒子 半径 40
      //     color: Colors.white,
      //   ),
      //   child: FloatingActionButton(
      //     elevation: 1.5,
      //     child: Icon(
      //       Icons.settings,
      //       color: Colors.white,
      //       size: this._currentIndex == 1 ? 30.0 : 25.0,
      //     ),
      //     onPressed: () {
      //       setState(() {
      //         this._currentIndex = 1;
      //       });
      //     },
      //     backgroundColor:
      //         this._currentIndex == 1 ? Colors.blue : Color(0xffff0036),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this._bodyList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        iconSize: 24.0, // 图标大小
        fixedColor: Colors.blueAccent, // 选中的图标的颜色
        type: BottomNavigationBarType.fixed, // 多个图标排列
        onTap: (index) {
          setState(
            () {
              this._currentIndex = index;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconF.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconF.collection),
            title: Text('分类'),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconF.comments),
            title: Text('消息'),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconF.account),
            title: Text('我的'),
          ),
        ],
      ),
      // drawer: Drawer(
      //   child: Column(
      //     children: <Widget>[
      //       Row(
      //         children: <Widget>[
      //           Expanded(
      //             child: UserAccountsDrawerHeader(
      //               decoration: BoxDecoration(
      //                 color: Color(0xffff0036),
      //               ),
      //               accountName: Text('时空'),
      //               accountEmail: Text('123'),
      //               currentAccountPicture: CircleAvatar(
      //                 backgroundImage: AssetImage('./images/my.jpg'),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Column(
      //         children: <Widget>[
      //           ListTile(
      //             title: Text('跳转'),
      //             onTap: () {
      //               Navigator.pop(context); // 点击后隐藏侧边栏
      //               Navigator.pushReplacementNamed(context, '/');
      //             },
      //           ),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
      // endDrawer: Drawer(
      //   child: Column(
      //     children: <Widget>[
      //       Row(
      //         children: <Widget>[
      //           Expanded(
      //             child: DrawerHeader(
      //               child: Image.asset('./images/logo.png'),
      //               decoration: BoxDecoration(
      //                 color: Color(0x25ff0036),
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //       ListTile(
      //         leading: CircleAvatar(
      //           backgroundImage: AssetImage('./images/my.jpg'),
      //         ),
      //         title: Text('跳转设置页'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/setting');
      //         },
      //       ),
      //       Divider(),
      //     ],
      //   ),
      // ),
    );
  }
}
