import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../public/wechat_item.dart';

class FoundPage extends StatefulWidget {
  @override
  _FoundState createState() => _FoundState();
}

class _FoundState extends State<FoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: WechatItem(
                img: 'assets/images/icons/icon_friends.png',
                title: '朋友圈',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  WechatItem(
                    img: 'assets/images/icons/icon_scan.png',
                    title: '扫一扫',
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Divider(
                      height: .5,
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                  WechatItem(
                    img: 'assets/images/icons/icon_shake.png',
                    title: '摇一摇',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  WechatItem(
                    img: 'assets/images/icons/icon_look.png',
                    title: '看一看',
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Divider(
                      height: .5,
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                  WechatItem(
                    img: 'assets/images/icons/icon_search.png',
                    title: '搜一搜',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  WechatItem(
                    img: 'assets/images/icons/icon_bottle.png',
                    title: '漂流瓶',
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Divider(
                      height: .5,
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                  WechatItem(
                    img: 'assets/images/icons/icon_near.png',
                    title: '附近的人',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  WechatItem(
                    img: 'assets/images/icons/icon_shop.png',
                    title: '购物',
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Divider(
                      height: .5,
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                  WechatItem(
                    img: 'assets/images/icons/icon_game.png',
                    title: '游戏',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.white,
              child: WechatItem(
                img: 'assets/images/icons/icon_link.png',
                title: '小程序',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
