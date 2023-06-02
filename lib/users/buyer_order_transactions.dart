// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';

class BuyerOrderTransactions extends StatefulWidget {
  const BuyerOrderTransactions({ Key? key }) : super(key: key);

  @override
  _BuyerOrderTransactionsState createState() => _BuyerOrderTransactionsState();
}

class _BuyerOrderTransactionsState extends State<BuyerOrderTransactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: AppColors.purpleColor,
        title: BigText(
          text: 'BUYER ORDER TRANSACTION',
          fontWeight: FontWeight.bold,
          size: 24,
          color: Colors.white,
        ),
        elevation: 0,
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
                      builder: (context) => BuyerOrderTransactions(),
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