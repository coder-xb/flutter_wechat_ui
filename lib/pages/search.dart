import 'package:flutter/material.dart';

import '../public/tap_call.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<SearchPage> {
  FocusNode _focusNode = FocusNode();

  FocusNode _reqFocus() {
    FocusScope.of(context).requestFocus(_focusNode);
    return _focusNode;
  }

  TapCallBack _getItem(String text) => TapCallBack(
        isFeed: false,
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xff1aad19),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                // 返回按钮
                TapCallBack(
                  isFeed: false,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black54,
                      size: 30,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45,
                  margin: EdgeInsets.only(left: 50, right: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Colors.green),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          focusNode: _reqFocus(),
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          onChanged: (String text) {},
                          decoration: InputDecoration(
                            hintText: '搜索',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.mic,
                          color: Color(0xffaaaaaa),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              alignment: Alignment.center,
              child: Text(
                '搜索指定文章',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffb5b5b5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getItem('朋友圈'),
                  _getItem('文章'),
                  _getItem('公众号'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getItem('小程序'),
                  _getItem('音乐'),
                  _getItem('表情'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
