// ignore_for_file: prefer_const_constructors_in_immutables, unused_import, unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, duplicate_ignore, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:midfeeglobal_app/static/bottom_sheet.dart';
import 'package:midfeeglobal_app/static/nav_bar.dart';
import 'package:midfeeglobal_app/users/buyer_order_transactions.dart';
import 'package:midfeeglobal_app/users/dashboard.dart';
import 'package:midfeeglobal_app/users/seller_order_transactions.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: AppColors.purpleColor,
        elevation: 0,
        title: Row(
          children: [
            Text(
              'DASHBOARD',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Container(
              width: 450,
              height: 270,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.purpleColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.pinkColor,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 200,
                            height: 200,
                            child:
                                Image(image: AssetImage('assets/avatar.png')),
                          ),
                          Positioned(
                            bottom: 5.0,
                            right: 10.0,
                            child: InkWell(
                              onTap: () {
                                showBottomSheet(
                                  context: context,
                                  // ignore: avoid_types_as_parameter_names
                                  builder: ((Builder) => bottomsheet()),
                                );
                              },
                              // ignore: prefer_const_constructors
                              child: Icon(
                                Icons.camera_alt,
                                color: AppColors.blueColor,
                                size: 15.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      BigText(
                        color: Colors.white,
                        text: 'KELECHI NDUBUISI',
                        fontWeight: FontWeight.bold,
                        size: 14,
                      ),
                      BigText(
                        color: Colors.white,
                        text: 'Kelechivctorn@gmail.com',
                        fontWeight: FontWeight.bold,
                        size: 14,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      BigText(
                        color: AppColors.blueColor,
                        text: 'Available Balance',
                        fontWeight: FontWeight.bold,
                        size: 16,
                      ),
                      SmallText(
                          text: '₦512,000.00',
                          color: Colors.white,
                          size: 14,
                          fontWeight: FontWeight.bold),
                      SizedBox(
                        height: 30,
                      ),
                      BigText(
                        color: AppColors.blueColor,
                        text: 'Pending Balance',
                        fontWeight: FontWeight.bold,
                        size: 16,
                      ),
                      SmallText(
                          text: '₦0.00',
                          color: Colors.white,
                          size: 14,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.storefront,
                    color: AppColors.purpleColor,
                    size: 18,
                  ),
                  title: BigText(
                    text: 'Seller Order Transactions',
                    fontWeight: FontWeight.bold,
                    size: 18,
                    color: AppColors.purpleColor,
                  ),
                  trailing: Icon(
                    Icons.arrow_downward,
                    color: AppColors.purpleColor,
                    size: 18,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      //please change Dashboard to Register
                      builder: (context) => SellerOrderTransactions(),
                    ),
                  );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.blueColor,
                        blurRadius: 10,
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.receipt,
                      color: AppColors.purpleColor,
                      size: 30,
                    ),
                    title: BigText(
                        text: "Transaction_Id: yujsfkjsjH1",
                        fontWeight: FontWeight.bold),
                    subtitle: SmallText(
                      text: "Description:: 1 IPHONE 14 256GIG",
                      fontWeight: FontWeight.bold,
                      color: AppColors.purpleColor,
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
            SizedBox(height: 5,),
            Divider(
              height: 10,
              endIndent: 100,
              indent: 100,
              thickness: 2,
              color: AppColors.pinkColor,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      //please change Dashboard to Register
                      builder: (context) => SellerOrderTransactions(),
                    ),
                  );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.blueColor,
                        blurRadius: 10,
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.receipt,
                      color: AppColors.purpleColor,
                      size: 30,
                    ),
                    title: BigText(
                        text: "Transaction_Id: yujsfkjsjH1",
                        fontWeight: FontWeight.bold),
                    subtitle: SmallText(
                      text: "Description:: 1 IPHONE 14 256GIG",
                      fontWeight: FontWeight.bold,
                      color: AppColors.purpleColor,
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
            SizedBox(height: 5,),
            Divider(
              height: 10,
              endIndent: 100,
              indent: 100,
              thickness: 2,
              color: AppColors.pinkColor,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      //please change Dashboard to Register
                      builder: (context) => SellerOrderTransactions(),
                    ),
                  );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.blueColor,
                        blurRadius: 10,
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.receipt,
                      color: AppColors.purpleColor,
                      size: 30,
                    ),
                    title: BigText(
                        text: "Transaction_Id: yujsfkjsjH1",
                        fontWeight: FontWeight.bold),
                    subtitle: SmallText(
                      text: "Description:: 1 IPHONE 14 256GIG",
                      fontWeight: FontWeight.bold,
                      color: AppColors.purpleColor,
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
            SizedBox(height: 5,),
            Divider(
              height: 10,
              endIndent: 100,
              indent: 100,
              thickness: 2,
              color: AppColors.pinkColor,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 450,
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.pinkColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.pinkColor,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.bar_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.pie_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.incomplete_circle,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.waterfall_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.bubble_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.donut_small,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.area_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.storefront,
                    color: AppColors.purpleColor,
                    size: 18,
                  ),
                  title: BigText(
                    text: 'Buyer Order Transactions',
                    fontWeight: FontWeight.bold,
                    size: 18,
                    color: AppColors.purpleColor,
                  ),
                  trailing: Icon(
                    Icons.arrow_downward,
                    color: AppColors.purpleColor,
                    size: 18,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      //please change Dashboard to Register
                      builder: (context) => BuyerOrderTransactions(),
                    ),
                  );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.blueColor,
                        blurRadius: 10,
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.receipt,
                      color: AppColors.purpleColor,
                      size: 30,
                    ),
                    title: BigText(
                        text: "Transaction_Id: yujsfkjsjH1",
                        fontWeight: FontWeight.bold),
                    subtitle: SmallText(
                      text: "Description:: 1 IPHONE 14 256GIG",
                      fontWeight: FontWeight.bold,
                      color: AppColors.purpleColor,
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
            SizedBox(height: 5,),
            Divider(
              height: 10,
              endIndent: 100,
              indent: 100,
              thickness: 2,
              color: AppColors.pinkColor,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      //please change Dashboard to Register
                      builder: (context) => BuyerOrderTransactions(),
                    ),
                  );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.blueColor,
                        blurRadius: 10,
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.receipt,
                      color: AppColors.purpleColor,
                      size: 30,
                    ),
                    title: BigText(
                        text: "Transaction_Id: yujsfkjsjH1",
                        fontWeight: FontWeight.bold),
                    subtitle: SmallText(
                      text: "Description:: 1 IPHONE 14 256GIG",
                      fontWeight: FontWeight.bold,
                      color: AppColors.purpleColor,
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
            SizedBox(height: 5,),
            Divider(
              height: 10,
              endIndent: 100,
              indent: 100,
              thickness: 2,
              color: AppColors.pinkColor,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      //please change Dashboard to Register
                      builder: (context) => BuyerOrderTransactions(),
                    ),
                  );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.blueColor,
                        blurRadius: 10,
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.receipt,
                      color: AppColors.purpleColor,
                      size: 30,
                    ),
                    title: BigText(
                        text: "Transaction_Id: yujsfkjsjH1",
                        fontWeight: FontWeight.bold),
                    subtitle: SmallText(
                      text: "Description:: 1 IPHONE 14 256GIG",
                      fontWeight: FontWeight.bold,
                      color: AppColors.purpleColor,
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
            SizedBox(height: 5,),
            Divider(
              height: 10,
              endIndent: 100,
              indent: 100,
              thickness: 2,
              color: AppColors.pinkColor,
            ),
            SizedBox(height: 5,),
            Container(
              width: 450,
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.pinkColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.pinkColor,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.bar_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.pie_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.incomplete_circle,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.waterfall_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.bubble_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.donut_small,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.area_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  Container buildSlider(BuildContext context, String title, Color color) {
    return Container(
      width: 250,
      height: 150,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              color: AppColors.pinkColor, blurRadius: 10, offset: Offset(0, 4))
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              BigText(
                text: 'Transaction_Id::',
                fontWeight: FontWeight.bold,
                size: 16,
                color: AppColors.purpleColor,
              ),
              BigText(
                text: 'shdhuyhR134Y',
                fontWeight: FontWeight.bold,
                size: 14,
                color: AppColors.purpleColor,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              BigText(
                text: 'Description::',
                fontWeight: FontWeight.bold,
                size: 16,
                color: AppColors.purpleColor,
              ),
              BigText(
                text: '2 Iphone 14 256gig',
                fontWeight: FontWeight.bold,
                size: 14,
                color: AppColors.purpleColor,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              BigText(
                text: 'Status::',
                fontWeight: FontWeight.bold,
                size: 16,
                color: AppColors.purpleColor,
              ),
              BigText(
                text: 'Paid',
                fontWeight: FontWeight.bold,
                size: 14,
                color: AppColors.purpleColor,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              BigText(
                text: 'Date::',
                fontWeight: FontWeight.bold,
                size: 16,
                color: AppColors.purpleColor,
              ),
              BigText(
                text: '24-02-2023',
                fontWeight: FontWeight.bold,
                size: 14,
                color: AppColors.purpleColor,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 20),
            child: SizedBox(
              width: 100,
              height: 30,
              // ignore: sort_child_properties_last
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //please change Dashboard to Register
                      builder: (context) => Dashboard(),
                    ),
                  );
                },
                // ignore: sort_child_properties_last
                child: BigText(
                  text: "Received",
                  fontWeight: FontWeight.bold,
                  size: 12,
                  color: Colors.white,
                ),

                style: ElevatedButton.styleFrom(
                  primary:
                      AppColors.purpleColor, //change background color of button
                  // onPrimary: Colors.yellow, //change text color of button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

Widget imageProfile(context) {
  return Center(
    child: Stack(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/avatar.png'),
        ),
        Positioned(
          bottom: 5.0,
          right: 3.0,
          child: InkWell(
            onTap: () {
              showBottomSheet(
                context: context,
                // ignore: avoid_types_as_parameter_names
                builder: ((Builder) => bottomsheet()),
              );
            },
            // ignore: prefer_const_constructors
            child: Icon(
              Icons.camera_alt,
              color: AppColors.blueColor,
              size: 15.0,
            ),
          ),
        ),
      ],
    ),
  );
}
