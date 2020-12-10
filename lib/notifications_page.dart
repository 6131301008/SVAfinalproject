import 'package:flutter/material.dart';
import 'package:login/scan_page.dart';
import 'package:login/home_page.dart';
import 'package:login/iknowuknow_page.dart';
import 'package:login/myfarm_page.dart';
import 'package:login/first_page.dart';
import 'package:login/notifications_page.dart';
import 'package:login/setting_page.dart';

class NotificationsPage extends StatelessWidget {
  static String tag = 'notifications-page';
  @override
  Widget build(BuildContext context) {

     final logo = Hero(
      tag: 'logo',
    
       child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 50.0,
      child: Image.asset('assets/bell.png'),
      ),
    );


    return Scaffold(
                      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 20, right: 50),
          children: <Widget>[
            logo,

             SizedBox (
             height:50 ,
           ), 
           
         Text(
              "    You dont have notifications",
              style:
                  TextStyle(color: Colors.lightGreen[300], fontSize: 30  ), 
            ),

           
          ],
        ),
        
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Notifications",
              style:
                  TextStyle(color: Colors.lightGreen[300], fontWeight: FontWeight.w600),
            ),
          ],
        ),
        
        actions: <Widget>[],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  Navigator.of(context).pushNamed(NotificationsPage.tag);
                }),
            Spacer(),
            IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.of(context).pushNamed(SettingPage.tag);
                }),

      
          ],
        ),
      ),
    );
  }
}
