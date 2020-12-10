import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
import 'package:flutter/material.dart';
import 'package:login/scan_page.dart';
import 'package:login/home_page.dart';
import 'package:login/iknowuknow_page.dart';
import 'package:login/myfarm_page.dart';
import 'package:login/first_page.dart';
import 'package:login/notifications_page.dart';
import 'package:login/setting_page.dart';
import 'package:login/profile_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class MyfarmPage extends StatelessWidget {
  static String tag = 'myfarm-page';
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 50.0,
        child: Image.asset('assets/profile.jpg'),
      ),
    );

    final email = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      // initialValue: 'Your Email',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      controller: passwordController,
      autofocus: false,
      // initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final gotomyfarmButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () async {
          var url = 'http://192.168.0.105:5000/api/login';
          var response = await http.post(url, body: {
            'email': emailController.text,
            'password': passwordController.text
          });
          if (response.statusCode == 200) {
            Navigator.of(context).pushNamed(ProfilePage.tag);
          } else {
            print('erorr');
            return showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: Text("Login Fail"),
                content: Text(response.body),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Text("okay"),
                  ),
                ],
              ),
            );
          }
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightGreen[300],
        child: Text('Go to My farm', style: TextStyle(color: Colors.white)),
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
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            gotomyfarmButton,
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "My",
              style:
                  TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
            ),
            Text(
              " Farm",
              style: TextStyle(
                  color: Colors.lightGreen[300], fontWeight: FontWeight.w600),
            )
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
