import 'package:flutter/material.dart';

import './data.dart';

class ContactItem extends StatelessWidget {
  final String img;
  final String title;
  final ContactData item;

  ContactItem({this.item, this.title, this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: .5,
            color: Color(0xffd9d9d9),
          ),
        ),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            img == null
                ? Image.network(
                    item.avatar != ''
                        ? item.avatar
                        : 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3443176063,4021563566&fm=27&gp=0.jpg',
                    width: 36,
                    height: 36,
                    scale: .9,
                  )
                : Image.asset(
                    img,
                    width: 36,
                    height: 36,
                  ),
            Container(
              margin: const EdgeInsets.only(left: 12),
              child: Text(
                title == null ? (item.name ?? '暂无') : title,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff353535),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
