import 'package:flutter/material.dart';

class BottomAppBarItem {
  static item() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: _buttonleft,
          ),
          Row(
            children: _buttonright,
          )
        ],
      ),
    );
  }

  static List<Widget> _buttonleft = [
    MaterialButton(
      minWidth: 40,
      onPressed: () {},
      child: Column(
        children: [
          Icon(Icons.dashboard),
          Text(
            'Dashborad',
          )
        ],
      ),
    ),
    MaterialButton(
      minWidth: 40,
      onPressed: () {},
      child: Column(
        children: [
          Icon(Icons.list_alt_rounded),
          Text(
            'Mutasi',
          )
        ],
      ),
    ),
  ];
  static List<Widget> _buttonright = [
    MaterialButton(
      minWidth: 40,
      onPressed: () {},
      child: Column(
        children: [
          Icon(Icons.mail_rounded),
          Text(
            'Aktivitas',
          )
        ],
      ),
    ),
    MaterialButton(
      minWidth: 40,
      onPressed: () {},
      child: Column(
        children: [
          Icon(Icons.account_circle_rounded),
          Text(
            'Profile',
          )
        ],
      ),
    ),
  ];
}
