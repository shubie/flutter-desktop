import 'package:flutter/material.dart';
import 'package:flutterdesktop/sidebar.dart';
import 'package:flutterdesktop/video_section.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffbF2F4F7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 5,
              child: VideoSection(),
            ),
            Expanded(
              flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: SideBar(),
            ))

          ],
        ),
      ),
    );
  }
}
