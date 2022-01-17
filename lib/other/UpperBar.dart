import 'package:flutter/material.dart';

class UpperBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
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
          onPressed: () {},
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
