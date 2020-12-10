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

class IknowUknowPage extends StatefulWidget {
  static String tag = 'iknowuknow_page';
  @override
  _IknowUknowPageState createState() => _IknowUknowPageState();
}

class _IknowUknowPageState extends State<IknowUknowPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int _currentPage = 0;
  final _pages = [];

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
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "I know",
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.w600),
                ),
                Text(
                  " U know",
                  style: TextStyle(
                      color: Colors.lightGreen[300],
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            actions: <Widget>[],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 73),
              child: Column(
                children: [
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
                                  color: Colors.lightGreen[300],
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Text(
                                      'Good news! ',
                                      style: TextStyle(
                                        color: Colors.white,
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
                                              'The chemicals on your fruit and veg ',
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontFamily: 'Nunito',
                                                fontSize: 20,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Arent as scary as you think despite a damning new report on pesticide use.',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Nunito',
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              'According to data from the Food Standards Agencya ',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Nunito',
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              'a third of us now have serious concerns about the safety of what we eat. ',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Nunito',
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              'Top of that list of concerns are pesticides – used in commercial food production  ',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Nunito',
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              ' to increase yields by killing pests and strangling weeds.',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Nunito',
                                                fontSize: 12,
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
                                Icons.settings,
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
                                    'assets/News.png',
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
                      color: Colors.lightGreen[300],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'News',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontFamily: 'Nunito',
                            ),
                          ),
                          Divider(
                            thickness: 2.5,
                          ),
                          Text(
                            ' Vegetables and fruits are export products that generate enormous income for the country. Each year, Thailand has the total exports of fresh, chilled, frozen and dried fruits and vegetables totaling 3-4 billion baht per year. And the average growth rate of 15-20%, which is because of the diversity of Thai vegetable and fruit products. And continued throughout the year Giving an advantage in product type And flexibility in export volume It is also a quality product. Good taste is popular And has been accepted by consumers abroad  The major export markets of Thai vegetable and fruit products are China, Vietnam, Indonesia, Japan and Hong Kong, accounting for 79% of the total export value. At the same time, there are other markets with a high growth rate, such as Myanmar, where the market is 45% and South Korea, where the market is 20%.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Nunito',
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
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
        )
      ],
    );
  }
}
