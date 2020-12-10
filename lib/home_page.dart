import 'package:flutter/material.dart';
import 'package:login/scan_page.dart';
import 'package:login/home_page.dart';
import 'package:login/iknowuknow_page.dart';
import 'package:login/myfarm_page.dart';
import 'package:login/first_page.dart';
import 'package:login/notifications_page.dart';
import 'package:login/setting_page.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'logo',
      child: Image.asset('assets/sva.jpg'),
    );

    final scanButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(ScanPage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightGreen[300],
        child: Text('Scan', style: TextStyle(color: Colors.white)),
      ),
    );

    final iknowuknowButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(IknowUknowPage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightGreen[300],
        child: Text('I know U Know', style: TextStyle(color: Colors.white)),
      ),
    );

    final myfarmButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(MyfarmPage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightGreen[300],
        child: Text('My Farm', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 24.0),
            scanButton,
            SizedBox(height: 24.0),
            iknowuknowButton,
            SizedBox(height: 24.0),
            myfarmButton,
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.notifications), onPressed: () 
            { Navigator.of(context).pushNamed(NotificationsPage.tag);}
            ),
            Spacer(),
            IconButton(icon: Icon(Icons.settings), onPressed: ()
             { Navigator.of(context).pushNamed(SettingPage.tag);}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: () {Navigator.of(context).pushNamed(FirstPage.tag);},
          backgroundColor: Colors.lightGreen[300]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
