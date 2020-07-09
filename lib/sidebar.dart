import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:flutter/material.dart';
import 'package:flutterdesktop/sidebar_tabs.dart';
import 'package:flutterdesktop/utils.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 25, horizontal:  20),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal:  15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color:  Colors.white
        ),
        child: SidebarTabs(),
    );
  }
}
