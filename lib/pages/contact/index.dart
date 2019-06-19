import 'package:flutter/material.dart';

import './head.dart';
import './data.dart';
import './item.dart';
import './side.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSider(
        items: contactData,
        headBuilder: (BuildContext context, int index) => Container(
              child: ContactHead(),
            ),
        itemBuilder: (BuildContext context, int index) => Container(
              color: Colors.white,
              alignment: Alignment.centerLeft,
              child: ContactItem(
                item: contactData[index],
              ),
            ),
        sectBuilder: (BuildContext context, int index) => Container(
              height: 32,
              padding: EdgeInsets.only(left: 15),
              color: Colors.grey[300],
              alignment: Alignment.centerLeft,
              child: Text(
                contactData[index].sKey,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff909090),
                ),
              ),
            ),
      ),
    );
  }
}
