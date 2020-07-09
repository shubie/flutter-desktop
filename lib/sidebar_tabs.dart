import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdesktop/utils.dart';


class SidebarTabs extends StatefulWidget {
  @override
  _SidebarTabsState createState() => _SidebarTabsState();
}

class _SidebarTabsState extends State<SidebarTabs> {
  @override
  Widget build(BuildContext context) {
    makeColumn(){
      return Column(
        children: [
          makePollSection(),
          Expanded(child: makeChatSection()),
          footerBox()
        ],
      );
    }
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            TabBar(
              labelPadding: EdgeInsets.only(right: 0, bottom: 0),
                indicatorSize: TabBarIndicatorSize.label,
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 0.0, color: Colors.transparent),
                ),
                tabs: <Widget>[
              Tab(child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Chat", style: TextStyle(color: Colors.black)),
              ),),
              Tab(child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Attendee", style: TextStyle(color: Colors.black),),
              ),)
            ]),
            Container(
              child: Expanded(
                child: TabBarView(children: [
                  makeColumn(),
                  Text(" "),
            ]),
              ),
            )
          ],
        ),
      ),

    );
  }


}
