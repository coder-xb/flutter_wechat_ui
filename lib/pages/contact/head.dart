import 'package:flutter/material.dart';

import './item.dart';

class ContactHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ContactItem(title: '新的朋友', img: 'assets/images/icons/icon_addfriend.png'),
        ContactItem(title: '我的群聊', img: 'assets/images/icons/icon_groupchat.png'),
        ContactItem(title: '我的公众号', img: 'assets/images/icons/icon_public.png'),
      ],
    );
  }
}
