import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:login/scan_page.dart';
import 'package:login/home_page.dart';
import 'package:login/iknowuknow_page.dart';
import 'package:login/myfarm_page.dart';
import 'package:login/first_page.dart';
import 'package:login/notifications_page.dart';
import 'package:login/setting_page.dart';

class ScanPage extends StatefulWidget {
  static String tag = 'scan-page';
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String qrCodeResult = "Not Yet Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Result",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrCodeResult,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(15.0),
              onPressed: () async {


                String codeSanner = await BarcodeScanner.scan();    //barcode scnner
                setState(() {
                  qrCodeResult = codeSanner;
                });

                // try{
                //   BarcodeScanner.scan()    this method is used to scan the QR code
                // }catch (e){
                //   BarcodeScanner.CameraAccessDenied;   we can print that user has denied for the permisions
                //   BarcodeScanner.UserCanceled;   we can print on the page that user has cancelled
                // }


              },
              child: Text(
                "Open Scanner",
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.green, width: 3.0),
                  borderRadius: BorderRadius.circular(20.0)),
            )
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
          onPressed: () {Navigator.of(context).pushNamed(HomePage.tag);},
          backgroundColor: Colors.lightGreen[300]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
  

  //its quite simple as that you can use try and catch staatements too for platform exception

