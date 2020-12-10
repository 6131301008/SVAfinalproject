import 'package:flutter/material.dart';
import 'package:login/scan_page.dart';
import 'package:login/home_page.dart';
import 'package:login/iknowuknow_page.dart';
import 'package:login/myfarm_page.dart';
import 'package:login/first_page.dart';
import 'package:login/notifications_page.dart';
import 'package:login/setting_page.dart';


class SettingPage extends StatelessWidget {
  static String tag = 'setting-page';
  @override
  Widget build(BuildContext context) {



        return Scaffold(
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
       
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Setting",
              style:
                  TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
            ),
            
          ],
        ),
        actions: <Widget>[],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(8.0),
                color: Colors.lightGreen[300],
                child: ListTile(
                title: Text("Account Information"),
                trailing: Icon(Icons.edit),
                ),
              ),
              const SizedBox (height: 10.0),
              Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) ,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.lock_outline, color: Colors.lightGreen[300],),
                    title: Text("Chang Password"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                    },
                  ),
                     ListTile(
                    leading: Icon(Icons.explore, color: Colors.lightGreen[300],),
                    title: Text("Chang location"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                    },
                  ),
                      ListTile(
                    leading: Icon(Icons.exit_to_app, color: Colors.lightGreen[300],),
                    title: Text("Log out"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                    },
                  ),
                ],
              ),

              )
            ],
          ),
        )

    );
  }
}