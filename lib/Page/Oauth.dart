import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

typedef ValueChanged(String codeStr);

class WebPage extends StatefulWidget {
  @required
  final String url;
  final String title;
  @required
  final ValueChanged valueChanged;
  WebPage({@required this.url,@required this.title,@required this.valueChanged});

  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  FlutterWebviewPlugin plugin;
  final String code = 'code=';
  @override
  void initState() {
    super.initState();
    plugin = FlutterWebviewPlugin();
    plugin.onStateChanged.listen((state) {
      if (state.type == WebViewState.finishLoad) {
        print('>>>>>加载完成');
      } else if (state.type == WebViewState.shouldStart) {
        print('>>>>>>准备加载');
      } else if (state.type == WebViewState.startLoad) {
        print('>>>>>>>开始加载');
      }
    });
    plugin.onUrlChanged.listen((value) {
      print('>>>>>>>>改变的url是：$value');
      if (value.contains(code)) {
        final codeString = value.split(code).last;
        widget.valueChanged(codeString);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: widget.url,
      appBar: AppBar(
        backgroundColor: Color(0xfffbfbfb),
        title: Text(widget.title,style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
    );
  }

  @override
  void dispose() {
    print('>>>>>>>我走了释放了');
    super.dispose();
  }
}
