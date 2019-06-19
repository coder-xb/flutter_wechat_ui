import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import '../../public/tap_call.dart';
import './data.dart';

class MsgItem extends StatelessWidget {
  final MsgData msg;
  MsgItem(this.msg);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: .5,
            color: Color(0xffd9d9d9),
          ),
        ),
      ),
      height: 65,
      child: TapCallBack(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 12, right: 10),
              child: Image.network(
                msg.img,
                width: 48,
                height: 48,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    msg.name,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff353535),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      msg.text,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffa9a9a9),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.only(right: 12, top: 12),
              child: Text(
                formatDate(msg.time, [hh, ':', nn, ':', ss]).toString(),
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffa9a9a9),
                ),
              ),
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
