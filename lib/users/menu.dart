// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unused_import, avoid_web_libraries_in_flutter, library_private_types_in_public_api

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/auth/login.dart';
import 'package:midfeeglobal_app/users/about_us.dart';
import 'package:midfeeglobal_app/users/dashboard.dart';
import 'package:midfeeglobal_app/users/home.dart';
import 'package:midfeeglobal_app/users/support_page.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(title: Text("Do You Wish to Logout"),
              // content: TextField(
              //   controller:  customController,
              // ),
              actions: <Widget>[
                Row(
                  children: [
                    MaterialButton(
                      elevation: 5.0,
                      child: SmallText(
                        text: "Yes",
                        fontWeight: FontWeight.bold,
                        size: 16,
                        color: AppColors.purpleColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                    ),
                    MaterialButton(
                      elevation: 5.0,
                      child: SmallText(
                        text: "No",
                        fontWeight: FontWeight.bold,
                        size: 16,
                        color: AppColors.pinkColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashboard(),
                          ),
                        );
                      },
                    ),
                  ],
                )
              ]);
        });
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: AppColors.purpleColor,
        elevation: 0,
        title: Row(
          children: [
            BigText(
                      color: Colors.white,
                      text: 'Menu',
                      size: 24,
                      fontWeight: FontWeight.bold),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Container(
              width: 400,
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: Center(
                child: Image.asset(
                  'assets/Black png.png',
                  scale: 5,
                ),
              ),
            ),
            Divider(thickness: 4.07, color: Color(0xffd63384)),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffd63384),
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: Material(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutUs(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text('About Us',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.pinkColor)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,color: AppColors.purpleColor,
                    ),
                  ),
                ),
              ),
            ),
            Divider(thickness: 4.07, color: Color(0xffd63384)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffd63384),
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: Material(
                child: InkWell(
                  onTap: () {
                    const url = "https://midfeeglobal.com/privacy-policy";
                    launchURL(url);
                  },
                  child: ListTile(
                    title: Text('Privacy Policy',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.pinkColor)),
                    trailing: Icon(Icons.arrow_forward_ios,color: AppColors.purpleColor,),
                  ),
                ),
              ),
            ),
            Divider(thickness: 4.07, color: Color(0xffd63384)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffd63384),
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: Material(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Support(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text('Support',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.pinkColor)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,color: AppColors.purpleColor,
                    ),
                  ),
                ),
              ),
            ),
            Divider(thickness: 4.07, color: Color(0xffd63384)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                     color: Color(0xffd63384),
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: Material(
                child: InkWell(
                  onTap: () {
                    createAlertDialog(context);
                  },
                  child: ListTile(
                    leading: Icon(Icons.power_settings_new,
                        color: AppColors.pinkColor),
                    title: Text('Logout',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.pinkColor)),
                    trailing: Icon(Icons.arrow_forward_ios,color: AppColors.purpleColor,),
                  ),
                ),
              ),
            ),
            Divider(thickness: 4.07, color: Color(0xffd63384)),
          ],
        ),
      ),
    );
  }
}
