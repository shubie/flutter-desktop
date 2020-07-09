import 'package:flutter/material.dart';
import 'package:flutterdesktop/Dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live Streaming app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 13.0, fontFamily: 'Hind'),

        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
