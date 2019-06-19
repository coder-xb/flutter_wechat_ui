import 'package:flutter/material.dart';
import './tap_call.dart';

class WechatItem extends StatelessWidget {
  final String title;
  final String img;
  final IconData icon;
  WechatItem({Key key, @required this.title, this.img, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TapCallBack(
      onPressed: () {
        switch (title) {
          case '朋友圈':
            Navigator.of(context).pushNamed('/friend');
            break;
          default:
            break;
        }
      },
      child: Container(
        height: 50,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: img != null
                  ? Image.asset(
                      img,
                      width: 32,
                      height: 32,
                    )
                  : SizedBox(
                      width: 32,
                      height: 32,
                      child: Icon(
                        icon,
                      ),
                    ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff353535)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
