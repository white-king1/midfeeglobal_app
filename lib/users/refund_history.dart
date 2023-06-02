// ignore_for_file: library_private_types_in_public_api, unused_import, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/static/bottom_sheet.dart';
import 'package:midfeeglobal_app/static/nav_bar.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';

class RefundHistory extends StatefulWidget {
  const RefundHistory({ Key? key }) : super(key: key);

  @override
  _RefundHistoryState createState() => _RefundHistoryState();
}

class _RefundHistoryState extends State<RefundHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: AppColors.purpleColor,
        title: BigText(
          text: 'REFUND HISTORY',
          fontWeight: FontWeight.bold,
          size: 24,
          color: Colors.white,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Container(
                  height: 200,
                  child: Image(image: AssetImage('assets/refund.png'))),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Text(
                  "YOUR REFUND HISTORY",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: AppColors.purpleColor),
                ),
              ),
              Divider(
                thickness: 4.07,
                color: Color(0xffd63384),
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
                    text: 'Refund History',
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
            Container(
              width: 400,
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                //shrinkWrap: true,
                children: [
                  buildSlider(context, '', Theme.of(context).primaryColor),
                  buildSlider(context, '', AppColors.pinkColor),
                  buildSlider(context, '', AppColors.pinkColor),
                ],
              ),
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
                text: 'Refund_Id::',
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
                text: 'Reason For Refund::',
                fontWeight: FontWeight.bold,
                size: 16,
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
          
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}