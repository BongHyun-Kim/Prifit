import 'package:example/Screen/QrScreen.dart';
import 'package:flutter/material.dart';

class UpperBar extends StatelessWidget implements PreferredSizeWidget{

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      // leading: Switch(onChanged: (value) {
      //   setState(() {
      //     _value = value;
      //   });
      // }, value: _value,
      // activeColor: Colors.white,
      // inactiveTrackColor: Colors.white,
      // inactiveThumbColor: Colors.grey,),
      title: Text(
        'PRIFIT',
        style: TextStyle(fontSize: 30),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search_outlined,
          ),
          color: Colors.white,
          iconSize: 30,
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => QrScreen()));
          },
          icon: Icon(
            Icons.qr_code_rounded,
          ),
          color: Colors.white,
          iconSize: 30,
        )
      ],
    );
  }
}
