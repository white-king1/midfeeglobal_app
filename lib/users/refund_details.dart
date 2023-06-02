// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/users/refund_history.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';

import '../widgets/small_text.dart';

class RefundDetails extends StatefulWidget {
  const RefundDetails({ Key? key }) : super(key: key);

  @override
  _RefundDetailsState createState() => _RefundDetailsState();
}

class _RefundDetailsState extends State<RefundDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        
        backgroundColor: AppColors.purpleColor,
        title: BigText(
          text: 'REFUND DETAILS',
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
              Image(image: AssetImage('assets/refund.png')),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Text(
                  "REFUND DETAILS",
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
                      text: 'Quickly view your refund ,',
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
                      text: 'By inputing a transaction id!',
                      fontWeight: FontWeight.normal)
                ],
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
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 10, right: 20),
                      child: SizedBox(
                        width: 150,
                        height: 50,
                        // ignore: sort_child_properties_last
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RefundHistory(),
                              ),
                            );
                          },
                          // ignore: sort_child_properties_last
                          child: BigText(
                            text: "Submit",
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
                              side: BorderSide(color: AppColors.purpleColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}