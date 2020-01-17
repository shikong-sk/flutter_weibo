import 'package:flutter/material.dart';
import 'package:flutter_shikong/Core/SPHelper.dart';

class My extends StatefulWidget {
  My({Key key}) : super(key: key);

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<My> {
  SpHelper _spHelper;

  getTokenState() async {
    this._spHelper = await SpHelper.getInstance();
    print(_spHelper.getKeys());
    this._spHelper.logOut();
    setState(() {
      print(_spHelper.getKeys());
    });
  }

  @override
  void initState() {
    super.initState();
    getTokenState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: RaisedButton(
                child: Text('退出登录'),
                onPressed: () async {
                  await this._spHelper.logOut();
                  print(_spHelper.getKeys().contains('expires_in'));
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
