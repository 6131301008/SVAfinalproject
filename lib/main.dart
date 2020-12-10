import 'package:flutter/material.dart';
import 'package:login/scan_page.dart';
import 'first_page.dart';
import 'home_page.dart';
import 'scan_page.dart';
import 'iknowuknow_page.dart';
import 'myfarm_page.dart';
import 'notifications_page.dart';
import 'setting_page.dart';
import 'profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    FirstPage.tag: (context) => FirstPage(),
    HomePage.tag: (context) => HomePage(),
    ScanPage.tag: (context) => ScanPage(),
    IknowUknowPage.tag: (context) => IknowUknowPage(),
    MyfarmPage.tag: (context) => MyfarmPage(),
    NotificationsPage.tag: (context) => NotificationsPage(),
    SettingPage.tag: (context) => SettingPage(),
    ProfilePage.tag: (context) => ProfilePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SVA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: FirstPage(),
      routes: routes,
    );
  }
}
