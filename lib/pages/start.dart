import 'dart:async';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      print('Flutter高仿微信程序启动...');
      Navigator.of(context).pushReplacementNamed('/app');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/start.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
