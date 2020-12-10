import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:login/scan_page.dart';
import 'package:login/home_page.dart';
import 'package:login/iknowuknow_page.dart';
import 'package:login/myfarm_page.dart';
import 'package:login/first_page.dart';
import 'package:login/notifications_page.dart';
import 'package:login/setting_page.dart';

class ProfilePage extends StatefulWidget {
  static String tag = 'profile-page';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                 Colors.white,
                Colors.lightGreen[300],
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 73),
              child: Column(
                children: [
                
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Farmer profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Container(
                    height: height * 0.43,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: innerHeight * 0.72,
                                width: innerWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 80,
                                    ),
                                    Text(
                                      'Somsak ',
                                      style: TextStyle(
                                        color: Colors.lightGreen[300],
                                        fontFamily: 'Nunito',
                                        fontSize: 37,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Product',
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontFamily: 'Nunito',
                                                fontSize: 25,
                                              ),
                                            ),
                                            Text(
                                              '4',
                                              style: TextStyle(
                                                 color: Colors.lightGreen[300],
                                                fontFamily: 'Nunito',
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 25,
                                            vertical: 8,
                                          ),
                                          child: Container(
                                            height: 50,
                                            width: 3,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Pending',
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontFamily: 'Nunito',
                                                fontSize: 25,
                                              ),
                                            ),
                                            Text(
                                              '1',
                                              style: TextStyle(
                                                 color: Colors.lightGreen[300],
                                                fontFamily: 'Nunito',
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 110,
                              right: 20,
                              child: Icon(
                                Icons.settings ,
                                color: Colors.grey[700],
                                size: 30,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Container(
                                  child: Image.asset(
                                    'assets/user.png', 
                                    width: innerWidth * 0.35,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: height * 0.5,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'My product',
                            style: TextStyle(
                              color: Colors.lightGreen[300],
                              fontSize: 27,
                              fontFamily: 'Nunito',
                            ),
                          ),
                          Divider(
                            thickness: 2.5,
                          ),
                        Text(
                            'Swamp morning glory',
                            style: TextStyle(
                              color: Colors.lightGreen[300],
                              fontSize: 27,
                              fontFamily: 'Nunito',
                            ),
                          ),
                          
                          Text(
                            'Cabbage',
                            style: TextStyle(
                              color: Colors.lightGreen[300],
                              fontSize: 27,
                              fontFamily: 'Nunito',
                            ),
                          ),
                          
                          Text(
                            'Garlic',
                            style: TextStyle(
                              color: Colors.lightGreen[300],
                              fontSize: 27,
                              fontFamily: 'Nunito',
                            ),
                          ),
                          Text(
                            'Long bean',
                            style: TextStyle(
                              color: Colors.lightGreen[300],
                              fontSize: 27,
                              fontFamily: 'Nunito',
                            ),
                          ),
                          Text(
                            'Cucumber (Pending)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 27,
                              fontFamily: 'Nunito',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
              /*     SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: height * 0.5,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'My product',
                            style: TextStyle(
                              color: Colors.lightGreen[300],
                              fontSize: 27,
                              fontFamily: 'Nunito',
                            ),
                          ),
                          Divider(
                            thickness: 2.5,
                          ),
                        Text(
                            'Swamp morning glory',
                            style: TextStyle(
                              color: Colors.lightGreen[300],
                              fontSize: 27,
                              fontFamily: 'Nunito',
                            ),
                          ),
                           */
                ],
              ),
            ),
          ),
        
       floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: () {Navigator.of(context).pushNamed(HomePage.tag);},
          backgroundColor: Colors.lightGreen[300]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        )
      ],
    );
  }
}

