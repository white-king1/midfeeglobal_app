// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';

class AcceptOrder extends StatefulWidget {
  const AcceptOrder({ Key? key }) : super(key: key);

  @override
  _AcceptOrderState createState() => _AcceptOrderState();
}

class _AcceptOrderState extends State<AcceptOrder> {
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
                  text: 'Accept Order',
                  size: 24,
                  fontWeight: FontWeight.bold),
            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Text(
                  "Transaction Details",
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
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  BigText(
                      color: AppColors.pinkColor,
                      text: 'View your transaction summary,',
                      size: 18,
                      fontWeight: FontWeight.bold),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  SmallText(
                      color: AppColors.pinkColor,
                      size: 12,
                      text: 'And make Payments Quickly!',
                      fontWeight: FontWeight.normal)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Transaction ID'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Description'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Duration(days)'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Quantity'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Text(
                  "Payment Summary,",
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
              SizedBox(
                height: 20,
              ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Amount'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    BigText(text: 'Charges(Non-Refundable 3% of every deposit)',size: 12, fontWeight: FontWeight.bold),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Charges'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Total Amount'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                          child: SizedBox(
                            width: 60,
                            height: 50,
                            // ignore: sort_child_properties_last
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(

                                //     builder: (context) => Signup(),
                                //   ),
                                // );
                              },
                              // ignore: sort_child_properties_last
                              child: BigText(
                                text: "Pay",
                                fontWeight: FontWeight.bold,
                                size: 14,
                                color: AppColors.blueColor,
                              ),

                              style: ElevatedButton.styleFrom(
                                primary: AppColors.purpleColor, //change background color of button
                                // onPrimary: Colors.yellow, //change text color of button
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side:
                                      BorderSide(color: AppColors.purpleColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                          child: SizedBox(
                            width: 120,
                            height: 50,
                            // ignore: sort_child_properties_last
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(

                                //     builder: (context) => Signup(),
                                //   ),
                                // );
                              },
                              // ignore: sort_child_properties_last
                              child: BigText(
                                text: "Pay from Wallet",
                                fontWeight: FontWeight.bold,
                                size: 10,
                                color: AppColors.blueColor,
                              ),

                              style: ElevatedButton.styleFrom(
                                primary: AppColors.pinkColor, //change background color of button
                                // onPrimary: Colors.yellow, //change text color of button
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side:
                                      BorderSide(color: AppColors.purpleColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                          child: SizedBox(
                            width: 120,
                            height: 50,
                            // ignore: sort_child_properties_last
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(

                                //     builder: (context) => Signup(),
                                //   ),
                                // );
                              },
                              // ignore: sort_child_properties_last
                              child: BigText(
                                text: "CancelOrder",
                                fontWeight: FontWeight.bold,
                                size: 14,
                                color: AppColors.blueColor,
                              ),

                              style: ElevatedButton.styleFrom(
                                primary: Colors.white, //change background color of button
                                // onPrimary: Colors.yellow, //change text color of button
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side:
                                      BorderSide(color: AppColors.purpleColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}