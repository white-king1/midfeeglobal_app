// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, deprecated_member_use, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/models/accept_order_response.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/view_model/accept_order_vm.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';
import 'package:provider/provider.dart';

class AcceptOrder extends StatefulWidget {
  AcceptOrder({super.key, required this.transactionId});

  final transactionId;
  @override
  _AcceptOrderState createState() => _AcceptOrderState();
}

class _AcceptOrderState extends State<AcceptOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.purpleColor,
          title: BigText(
            text: 'ACCEPT ORDER',
            fontWeight: FontWeight.bold,
            size: 24,
            color: Colors.white,
          ),
          elevation: 0,
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
                child: BigText(
                  text: 'Transaction Details',
                  fontWeight: FontWeight.bold,
                  color: AppColors.purpleColor,
                  size: 18,
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
              FutureBuilder(
                  future: Provider.of<AcceptOrderVm>(context, listen: false)
                      .getAcceptOrder(context, widget.transactionId),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text('An error occured'),
                      );
                    }
                    AcceptOrderResponse acpt = snapshot.data;
                    return Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 300,
                          width: 400,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.13)),
                          ),
                          child: Column(
                            children: [
                              Material(
                                child: ListTile(
                                  title: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            BigText(
                                              text:
                                                  "Transaction ID::${acpt.data?.transactionId} ",
                                              fontWeight: FontWeight.bold,
                                              size: 18,
                                            ),
                                            SizedBox(width: 5,),
                                            Icon(
                                              Icons.copy_sharp,
                                              color: AppColors.purpleColor,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 10,
                                endIndent: 10,
                                indent: 10,
                                thickness: 2,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Material(
                                child: ListTile(
                                  title: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        BigText(
                                          text:
                                              "Description::${acpt.data?.description} ",
                                          fontWeight: FontWeight.bold,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 10,
                                endIndent: 10,
                                indent: 10,
                                thickness: 2,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              
                              Material(
                                child: ListTile(
                                  title: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        BigText(
                                          text:
                                              "Duration in (Days)::${acpt.data?.period} ",
                                          fontWeight: FontWeight.bold,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 10,
                                endIndent: 10,
                                indent: 10,
                                thickness: 2,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Material(
                                child: ListTile(
                                  title: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        BigText(
                                          text:
                                              "Quantity::${acpt.data?.quantity} ",
                                          fontWeight: FontWeight.bold,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 10,
                                endIndent: 10,
                                indent: 10,
                                thickness: 2,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.13)),
                          ),
                          child: BigText(
                            text: 'Payment Summary',
                            fontWeight: FontWeight.bold,
                            color: AppColors.purpleColor,
                            size: 18,
                          ),
                        ),
                        Divider(
                          thickness: 4.07,
                          color: Color(0xffd63384),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 300,
                          width: 400,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.13)),
                          ),
                          child: Column(
                            children: [
                              Material(
                                child: ListTile(
                                  title: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        BigText(
                                          text:
                                              "Amount:: ₦${acpt.data?.deposit} ",
                                          fontWeight: FontWeight.bold,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 10,
                                endIndent: 10,
                                indent: 10,
                                thickness: 2,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Material(
                                child: ListTile(
                                  title: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        BigText(
                                          text:
                                              "Charges(Non-refundable 3% of every Deposit):: ₦${acpt.data?.charges} ",
                                          fontWeight: FontWeight.bold,
                                          size: 14,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 10,
                                endIndent: 10,
                                indent: 10,
                                thickness: 2,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              
                              Material(
                                child: ListTile(
                                  title: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        BigText(
                                          text:
                                              "Total Amount:: ₦${acpt.data?.total} ",
                                          fontWeight: FontWeight.bold,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 10,
                                endIndent: 10,
                                indent: 10,
                                thickness: 2,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: 20, left: 10, right: 10),
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
                                    color: AppColors.purpleColor,
                                  ),

                                  style: ElevatedButton.styleFrom(
                                    primary: Colors
                                        .white, //change background color of button
                                    // onPrimary: Colors.yellow, //change text color of button
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: AppColors.purpleColor),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 20, left: 10, right: 10),
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
                                    color: Colors.white,
                                  ),

                                  style: ElevatedButton.styleFrom(
                                    primary: AppColors
                                        .purpleColor, //change background color of button
                                    // onPrimary: Colors.yellow, //change text color of button
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: AppColors.purpleColor),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 20, left: 10, right: 10),
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
                                    color: Colors.white,
                                  ),

                                  style: ElevatedButton.styleFrom(
                                    primary: AppColors
                                        .pinkColor, //change background color of button
                                    // onPrimary: Colors.yellow, //change text color of button
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: AppColors.purpleColor),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
