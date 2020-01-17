// 加载主页面
import 'package:flutter/material.dart';
import '../Core/SPHelper.dart';
import '../Core/ServiceManager.dart';
import '../Page/Oauth.dart';
import '../Scaffold/TabScaffold.dart';
import '../config/User.dart';

import '../config/API.dart';

class Application extends StatefulWidget {
  Application({Key key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application>
    with TickerProviderStateMixin {
  SpHelper _spHelper;
  bool _loginState = false;

  @override
  void initState() {
    super.initState();
    getTokenState();
  }

  getTokenState() async {
    this._spHelper = await SpHelper.getInstance();
    setState(() {
      this._loginState = this._spHelper.showWBoo();
      print(this._spHelper.getKeys());
    });
  }

  //* 授权code回调 */
  _back(String code) {
    ServiceManager.getAccessToken(code).then((models) {
      SpHelper.setString(
          (models.expires * 10).toString(), UserData.TOKEN_TIME_KEY);
      SpHelper.setString(models.uid, UserData.USER_UID);
      SpHelper.setString(models.accessToken, UserData.TOKEN_KEY).then((b) {
        if (b) {
          setState(() {
            this._loginState = true;
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return this._loginState
        ? TabScaffold()
        : WebPage(url: API.getOauthUrl(), title: '微博登录', valueChanged: _back);
  }
}
