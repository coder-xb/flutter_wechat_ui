import 'package:flutter/material.dart';

import './data.dart';

class ContactSider extends StatefulWidget {
  final List<ContactData> items;
  final IndexedWidgetBuilder headBuilder;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder sectBuilder;

  ContactSider({
    Key key,
    @required this.items,
    this.headBuilder,
    @required this.itemBuilder,
    @required this.sectBuilder,
  }) : super(key: key);

  @override
  _SiderState createState() => _SiderState();
}

abstract class SectIndexer {
  listScrollToPosition(int index);
}

class _SiderState extends State<ContactSider> implements SectIndexer {
  Color _pressColor = Colors.transparent; // siderbar 背景颜色，默认为透明
  final ScrollController _scrollController = ScrollController();

  @override
  listScrollToPosition(int index) {
    for (int i = 0, len = widget.items.length; i < len; i++) {
      if (_siderKeys[index] == '☆' || _siderKeys[index] == '↑') {
        setState(() {
          _scrollController.jumpTo(0);
        });
        return -1;
      } else if (widget.items[i].sKey == _siderKeys[index]) {
        return i;
      }
    }
    return -1;
  }

  bool _onNotification(ScrollNotification noticfication) {
    return true;
  }

  Widget _showHeadView(int index) {
    if (index == 0 && widget.headBuilder != null) {
      return Offstage(
        offstage: false,
        child: widget.headBuilder(context, index),
      );
    }
    return Container();
  }

  bool _shouldShowHead(int index) {
    if (index < 0) return false;
    if (index == 0) return false;
    if (index != 0 && widget.items[index].sKey != widget.items[index - 1].sKey)
      return false;

    return true;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // 通用功能，列表加载更多
          NotificationListener(
            onNotification: _onNotification,
            child: ListView.builder(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: widget.items.length,
              itemBuilder: (BuildContext context, int index) => Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        _showHeadView(index),
                        Offstage(
                          offstage: _shouldShowHead(index),
                          child: widget.sectBuilder(context, index),
                        ),
                        Column(
                          children: <Widget>[
                            widget.itemBuilder(context, index),
                          ],
                        ),
                      ],
                    ),
                  ),
            ),
          ),
          // 排序字母
          Positioned(
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: 30,
              color: _pressColor,
              child: GestureDetector(
                // 按下
                onTapDown: (TapDownDetails t) {
                  setState(() {
                    _pressColor = Colors.grey[100];
                  });
                },
                // 弹起
                onTapUp: (TapUpDetails t) {
                  setState(() {
                    _pressColor = Colors.transparent;
                  });
                },
                // 垂直滑动开始
                onVerticalDragStart: (DragStartDetails t) {
                  setState(() {
                    _pressColor = Colors.grey[100];
                  });
                },
                // 垂直滑动结束
                onVerticalDragDown: (DragDownDetails t) {
                  setState(() {
                    _pressColor = Colors.transparent;
                  });
                },
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: _siderKeys.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    alignment: Alignment.center,
                    height: 16,
                    child: Text(_siderKeys[index]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

const _siderKeys = <String>[
  '↑',
  '☆',
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z',
];
