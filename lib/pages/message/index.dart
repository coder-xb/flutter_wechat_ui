import 'package:flutter/material.dart';

import './data.dart';
import './item.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: msgData.length,
        itemBuilder: (BuildContext context, int index) {
          return MsgItem(msgData[index]);
        },
      ),
    );
  }
}
