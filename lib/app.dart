import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import './pages/index.dart';
import './pages/start.dart';
import './pages/search.dart';
import './config/theme.dart';

class WechatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter_Wechat',
      theme: appTheme,
      routes: <String, WidgetBuilder>{
        '/app': (BuildContext context) => Wechat(),
        '/friend': (BuildContext context) => WebviewScaffold(
              url: 'https://weixin.qq.com/',
              appBar: AppBar(
                title: Text('微信朋友圈'),
              ),
              withZoom: true,
              withLocalStorage: true,
            ),
        '/search': (BuildContext context) => SearchPage(),
      },
      home: StartPage(),
    );
  }
}
