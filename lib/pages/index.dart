import 'package:flutter/material.dart';
import './message/index.dart';
import './contact/index.dart';
import './found.dart';
import './profile.dart';

class Wechat extends StatefulWidget {
  @override
  _WechatState createState() => _WechatState();
}

class _WechatState extends State<Wechat> {
  int _curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter仿微信UI'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
               Navigator.of(context).pushNamed('/search');
            },
            child: Icon(
              Icons.search,
              size: 28,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 20),
            child: GestureDetector(
              onTap: () {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(500, 76, 10, 0),
                  items: <PopupMenuItem>[
                    _menuItem('发起群聊',
                        img: 'assets/images/menus/group.png'),
                    _menuItem('添加朋友',
                        img: 'assets/images/menus/addfriend.png'),
                    _menuItem('扫一扫',
                        img: 'assets/images/menus/scan.png'),
                    _menuItem('收付款', icon: Icons.crop_free),
                    _menuItem('帮助与反馈', icon: Icons.email)
                  ],
                );
              },
              child: Icon(Icons.add_circle_outline),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _curIndex,
        onTap: (index) {
          setState(() {
            _curIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          _navItem(
            '微信',
            color: _curIndex == 0 ? Color(0xff46c01b) : Color(0xff999999),
            img: _curIndex == 0
                ? 'assets/images/tabs/weixin_pressed.png'
                : 'assets/images/tabs/weixin_normal.png',
          ),
          _navItem(
            '通讯录',
            color: _curIndex == 1 ? Color(0xff46c01b) : Color(0xff999999),
            img: _curIndex == 1
                ? 'assets/images/tabs/contact_pressed.png'
                : 'assets/images/tabs/contact_normal.png',
          ),
          _navItem(
            '发现',
            color: _curIndex == 2 ? Color(0xff46c01b) : Color(0xff999999),
            img: _curIndex == 2
                ? 'assets/images/tabs/find_pressed.png'
                : 'assets/images/tabs/find_normal.png',
          ),
          _navItem(
            '我的',
            color: _curIndex == 3 ? Color(0xff46c01b) : Color(0xff999999),
            img: _curIndex == 3
                ? 'assets/images/tabs/profile_pressed.png'
                : 'assets/images/tabs/profile_normal.png',
          ),
        ],
      ),
       body: _curPage(),
    );
  }

  // 选项卡Item
  BottomNavigationBarItem _navItem(title, {Color color, String img}) {
    return BottomNavigationBarItem(
      title: Text(title, style: TextStyle(color: color)),
      icon: Image.asset(img, width: 32, height: 28),
    );
  }

  // 选项卡切换页面
  MessagePage message;
  ContactPage contact;
  FoundPage found;
  ProfilePage profile;
  dynamic _curPage() {
    switch(_curIndex){
      case 0: message = message == null ? MessagePage() : message;return message;
      case 1: contact = contact == null ? ContactPage() : contact;return contact;
      case 2: found = found == null ? FoundPage() : found;return found;
      case 3: profile = profile == null ? ProfilePage() : profile;return profile;
      default: return null;
    }
  }

  // 弹出菜单Item
  PopupMenuItem _menuItem(String title, {String img, IconData icon}) =>
      PopupMenuItem(
        child: Row(
          children: <Widget>[
            img != null
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
                      color: Colors.white,
                    ),
                  ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      );
}
