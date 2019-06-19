import 'package:flutter/material.dart';

class ContactData {
  String sKey;
  String name;
  String avatar;

  ContactData({@required this.sKey, this.name, this.avatar});
}

List<ContactData> contactData = [
  ContactData(
    sKey: 'A',
    name: 'A家具销售',
    avatar:
        'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3443176063,4021563566&fm=27&gp=0.jpg',
  ),
  ContactData(
    sKey: 'A',
    name: '阿衰',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540441383345&di=39fe0512213122b232a7861363d86ba4&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F8435e5dde71190ef0795a828c41b9d16fcfa60de.jpg',
  ),
  ContactData(
    sKey: 'B',
    name: '波波',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540441383345&di=41a9c62adb0702595cbeab1eb7935f66&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F3b292df5e0fe992532fd5c7e3fa85edf8db1712e.jpg',
  ),
  ContactData(
    sKey: 'C',
    name: '陈可',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1529317279409&di=c04fca2322c5fd92860d5445ac67f5ba&imgtype=0&src=http%3A%2F%2Fimg.duoziwang.com%2F2018%2F07%2F201812398230049.jpg',
  ),
  ContactData(
    sKey: 'C',
    name: '参谋长',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540441590992&di=6b6615dbaecc17a83517b8b5bb8853fb&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F34fae6cd7b899e51703453e048a7d933c9950d8f.jpg',
  ),
  ContactData(
    sKey: 'D',
    name: '杜一',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1529317279343&di=a85a9844a259f97a0a3349ad0ca0bdfb&imgtype=0&src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2017-12%2F2017120617245278991.jpg',
  ),
  ContactData(
    sKey: 'D',
    name: '东方红',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1529317279342&di=7eae385ce6b52688ec1ae23efb6df2b6&imgtype=0&src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2018-2%2F2018020913274626058.jpg',
  ),
  ContactData(
    sKey: 'D',
    name: '大表哥',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1529317279332&di=4ce7a79c1969de3afd25ff12415a9a86&imgtype=0&src=http%3A%2F%2Fimg.duoziwang.com%2F2018%2F07%2F201812398230061.jpg',
  ),
  ContactData(
    sKey: 'F',
    name: '飞机',
    avatar:
        'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=889175251,2001539136&fm=27&gp=0.jpg',
  ),
  ContactData(
    sKey: 'B',
    name: '波波',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540441383345&di=41a9c62adb0702595cbeab1eb7935f66&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F3b292df5e0fe992532fd5c7e3fa85edf8db1712e.jpg',
  ),
  ContactData(
    sKey: 'B',
    name: '波波',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540441383345&di=41a9c62adb0702595cbeab1eb7935f66&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F3b292df5e0fe992532fd5c7e3fa85edf8db1712e.jpg',
  ),
  ContactData(
    sKey: 'G',
    name: '高大上',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1529317923619&di=c7c1e8e86f028a98f5f1287f08185dda&imgtype=0&src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2017-12%2F15131353255776823.jpg',
  ),
  ContactData(
    sKey: 'H',
    name: 'herbie',
    avatar:
        'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=4174685487,4080018153&fm=11&gp=0.jpg',
  ),
  ContactData(
    sKey: 'H',
    name: '何小冉',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1529318082533&di=12e4f3d6b8bff6da451502fef002c1c1&imgtype=0&src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2018-6%2F2018060510054743138.jpg',
  ),
  ContactData(
    sKey: 'J',
    name: '姬如雪',
    avatar:
        'http://img5.duitang.com/uploads/item/201609/26/20160926124027_vxRkt.jpeg',
  ),
  ContactData(
    sKey: 'J',
    name: 'JC',
    avatar: '',
  ),
  ContactData(
    sKey: 'J',
    name: 'JCZ',
    avatar: '',
  ),
  ContactData(
    sKey: 'L',
    name: '联通',
    avatar: '',
  ),
  ContactData(
    sKey: 'L',
    name: '留学生',
    avatar: 'http://www.qqzhi.com/uploadpic/2014-09-25/120539135.jpg',
  ),
  ContactData(
    sKey: 'L',
    name: '李先森',
    avatar: 'http://www.qqzhi.com/uploadpic/2015-01-16/110701410.jpg',
  ),
  ContactData(
    sKey: 'L',
    name: '罗森',
    avatar: 'http://www.qqzhi.com/uploadpic/2014-10-14/001343706.jpg',
  ),
  ContactData(
    sKey: 'L',
    name: '老司机',
    avatar:
        'http://img.bitscn.com/upimg/allimg/c160107/1452134O464060-32cR.jpg',
  ),
  ContactData(sKey: 'L', name: '辣眼睛', avatar: ''),
  ContactData(
    sKey: 'M',
    name: 'Mary',
    avatar: '',
  ),
  ContactData(sKey: 'M', name: 'Master', avatar: ''),
  ContactData(
    sKey: 'P',
    name: '彭于晏',
    avatar: '',
  ),
  ContactData(
    sKey: 'P',
    name: '彭简',
    avatar: '',
  ),
  ContactData(
    sKey: 'Q',
    name: '乔大',
    avatar:
        'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2957447029,2344598237&fm=27&gp=0.jpg',
  ),
  ContactData(
    sKey: 'Q',
    name: '乔小',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1529320656524&di=3840b5e429f92459c3a5211c904a74b8&imgtype=0&src=http%3A%2F%2Fimg5.duitang.com%2Fuploads%2Fitem%2F201406%2F29%2F20140629020408_ZtckA.jpeg',
  ),
  ContactData(
    sKey: 'Q',
    name: '邱小玲',
    avatar:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1529320656523&di=afbc5ec78d4a4f28efd20585c0acbdaf&imgtype=0&src=http%3A%2F%2Fcdnq.duitang.com%2Fuploads%2Fitem%2F201502%2F22%2F20150222145005_BGBCX.jpeg',
  ),
  ContactData(
    sKey: 'Q',
    name: '齐东宇',
    avatar:
        'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1790389375,489698159&fm=27&gp=0.jpg',
  ),
  ContactData(
    sKey: 'R',
    name: 'rogerMan',
    avatar:
        'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=179495508,198350193&fm=27&gp=0.jpg',
  ),
  ContactData(
    sKey: 'S',
    name: '石头熊',
    avatar:
        'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1811676222,3366694286&fm=27&gp=0.jpg',
  ),
  ContactData(
    sKey: 'S',
    name: '孙丽',
    avatar: '',
  ),
  ContactData(
    sKey: 'S',
    name: '沈家',
    avatar: '',
  ),
  ContactData(
    sKey: 'T',
    name: '天天',
    avatar:
        'http://img.7139.com/file/201206/4f63c6678cefe6396e0c3d02e52dce47.jpg',
  ),
  ContactData(
    sKey: 'W',
    name: '薇薇安',
    avatar:
        'http://image.bitauto.com/dealer/news/50001912/d140ad9a-5f2d-488d-aa09-7474cb8bc2d0.jpg',
  ),
  ContactData(
    sKey: 'X',
    name: '小猪',
    avatar: '',
  ),
  ContactData(
    sKey: 'X',
    name: '小猪佩奇',
    avatar: '',
  ),
  ContactData(
    sKey: 'X',
    name: '茜茜',
    avatar:
        'http://dealer2.autoimg.cn/dealerdfs/g23/M10/C3/8E/620x0_1_q87_autohomedealer__wKgFV1hwh4eAY1azAABEQL7nzwY495.jpg',
  ),
  ContactData(
    sKey: 'Y',
    name: '杨洋',
    avatar: '',
  ),
  ContactData(
    sKey: 'Z',
    name: '张一山',
    avatar:
        'http://img4.duitang.com/uploads/item/201510/08/20151008222232_rXEve.png',
  ),
];
