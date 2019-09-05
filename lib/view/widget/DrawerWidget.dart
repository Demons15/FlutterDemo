import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:
                Text('Demons', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('atl1314@qq.com',
                style: TextStyle(fontWeight: FontWeight.w100)),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://b-ssl.duitang.com/uploads/item/201810/18/20181018162951_kgwzm.thumb.700_0.jpeg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[100],
              image: DecorationImage(
                image: NetworkImage(
                    'https://resources.ninghao.org/images/candy-shop.jpg'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[300].withOpacity(0.6),
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Message',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black45,
              size: 25.0,
            ),
            onTap: () => Navigator.pop(context), //关闭侧边菜单
          ),
          ListTile(
            title: Text(
              'Favorvite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black45,
              size: 25.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Setting',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black45,
              size: 25.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
