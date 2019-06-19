import 'package:flutter/material.dart';

class TapCallBack extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final bool isFeed;
  final Color bgColor;
  TapCallBack({Key key,
    @required this.child,
    @required this.onPressed,
    this.isFeed: true,
    this.bgColor: const Color(0xffd8d8d8),
  }) : super(key: key);

  @override
  _TapState createState() => _TapState();
}

class _TapState extends State<TapCallBack> {
  Color color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: color,
        child: widget.child,
      ),
      onTap: widget.onPressed,
      onPanDown: (d) {
        if (!widget.isFeed) return;
        setState(() {
          color = widget.bgColor;
        });
      },
      onPanCancel: () {
        setState(() {
          color = Colors.transparent;
        });
      },
    );
  }
}
