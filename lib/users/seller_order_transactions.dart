// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, unused_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';

class SellerOrderTransactions extends StatefulWidget {
  const SellerOrderTransactions({Key? key}) : super(key: key);

  @override
  _SellerOrderTransactionsState createState() =>
      _SellerOrderTransactionsState();
}

class _SellerOrderTransactionsState extends State<SellerOrderTransactions> {
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
                  text: 'Seller Order Transaction',
                  size: 20,
                  fontWeight: FontWeight.bold),
            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            padding:
                const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 20),
            child: Column(children: [
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
                child: Column(
        children: [
          Row(
            children: [
              BigText(
                text: 'Transaction_Id::',
                fontWeight: FontWeight.bold,
                size: 16,
                color: Colors.white,
              ),
              BigText(
                text: 'shdhuyhR134Y',
                fontWeight: FontWeight.bold,
                size: 14,
                color: Colors.white,
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
                color: Colors.white,
              ),
              BigText(
                text: '2 Iphone 14 256gig',
                fontWeight: FontWeight.bold,
                size: 14,
                color: Colors.white,
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
                color: Colors.white,
              ),
              BigText(
                text: 'Paid',
                fontWeight: FontWeight.bold,
                size: 14,
                color: Colors.white,
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
                color: Colors.white,
              ),
              BigText(
                text: '24-02-2023',
                fontWeight: FontWeight.bold,
                size: 14,
                color: Colors.white,
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
                      builder: (context) => SellerOrderTransactions(),
                    ),
                  );
                },
                // ignore: sort_child_properties_last
                child: BigText(
                  text: "Received",
                  fontWeight: FontWeight.bold,
                  size: 12,
                  color: AppColors.purpleColor,
                ),

                style: ElevatedButton.styleFrom(
                  primary:
                      Colors.white, //change background color of button
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
              ),
              
            ]
            )
            )
            );
  }
}
