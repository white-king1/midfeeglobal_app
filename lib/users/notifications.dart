// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_constructors, prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purpleColor,
        title: BigText(
          text: 'NOTIFICATIONS',
          fontWeight: FontWeight.bold,
          size: 24,
          color: Colors.white,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 350,
                  height: 200,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/Black png.png'),
                      ),
                      BigText(
                          text: 'GLOBAL.',
                          color: AppColors.purpleColor,
                          size: 32,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    // padding: EdgeInsets.only(bottom: -10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          color: AppColors.pinkColor,
                          text: 'Click To Read',
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                        Text(
                          ' Notifications Below;',
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColors.pinkColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black.withOpacity(0.13)),
                  ),
                  child: Material(
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Icon(
                        Icons.email,
                        color: AppColors.purpleColor,
                        size: 30,
                      ),
                      title: BigText(
                        text: "New Features On This App",
                        fontWeight: FontWeight.bold,
                        size: 18,
                      ),
                      subtitle: SmallText(
                        text: "Starts From The Day You Request Our Services",
                        fontWeight: FontWeight.bold,
                        color: AppColors.purpleColor,
                        size: 12,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.purpleColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
                endIndent: 100,
                indent: 100,
                thickness: 2,
                color: AppColors.pinkColor,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black.withOpacity(0.13)),
                  ),
                  child: Material(
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Icon(
                        Icons.email,
                        color: AppColors.purpleColor,
                        size: 30,
                      ),
                      title: BigText(
                        text: "New Features On This App",
                        fontWeight: FontWeight.bold,
                        size: 18,
                      ),
                      subtitle: SmallText(
                        text: "Starts From The Day You Request Our Services",
                        fontWeight: FontWeight.bold,
                        color: AppColors.purpleColor,
                        size: 12,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.purpleColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
                endIndent: 100,
                indent: 100,
                thickness: 2,
                color: AppColors.pinkColor,
              ),
              SizedBox(
                height: 20,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
