import 'package:example/Screen/NoticeEventScreen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/default_profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('공지사항 & 이벤트', style: TextStyle(color: Colors.black),),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NoticeScreen())),
          ),
          ListTile(
            leading: Icon(Icons.bookmark_border_rounded),
            title: Text('정기권구독', style: TextStyle(color: Colors.black),),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.calendar_today_rounded),
            title: Text('스케줄러', style: TextStyle(color: Colors.black),),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('환경설정', style: TextStyle(color: Colors.black),),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.contact_support_rounded),
            title: Text('고객센터', style: TextStyle(color: Colors.black),),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
