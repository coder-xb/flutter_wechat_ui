import 'package:flutter/material.dart';
import '../public/tap_call.dart';
import '../public/wechat_item.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 80,
            child: TapCallBack(
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 12, right: 12),
                    child: Image.asset(
                      'assets/images/users/avatar.png',
                      width: 70,
                      height: 70,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '我是图图',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff353535),
                          ),
                        ),
                        Text(
                          '微信号：wx_tutu',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffa9a9a9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, right: 15),
                    child: Image.asset(
                      'assets/images/users/code.png',
                      width: 24,
                      height: 24,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: WechatItem(
              img: 'assets/images/users/money.png',
              title: '支付',
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                WechatItem(
                  img: 'assets/images/users/collect.png',
                  title: '收藏',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Divider(
                    height: .5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                WechatItem(
                  img: 'assets/images/users/photo.png',
                  title: '相册',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Divider(
                    height: .5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                WechatItem(
                  img: 'assets/images/users/card.png',
                  title: '卡包',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Divider(
                    height: .5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                WechatItem(
                  img: 'assets/images/users/smile.png',
                  title: '表情包',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: WechatItem(
              img: 'assets/images/users/setting.png',
              title: '设置',
            ),
          ),
        ],
      ),
    );
  }
}
