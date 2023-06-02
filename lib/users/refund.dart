// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/users/dashboard.dart';
import 'package:midfeeglobal_app/users/refund_history.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';

class Refund extends StatefulWidget {
  const Refund({Key? key}) : super(key: key);

  @override
  _RefundState createState() => _RefundState();
}

class _RefundState extends State<Refund> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        
        backgroundColor: AppColors.purpleColor,
        title: BigText(
          text: 'REFUND',
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
                  "INITIATE A REFUND",
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  BigText(
                      color: AppColors.pinkColor,
                      text: 'Request a refund,',
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
                      text: 'By inputing the details below!',
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
                    Row(
                      children: [
                        SmallText(
                            text: 'TRANSACTION ID',
                            size: 12,
                            fontWeight: FontWeight.bold),
                        SmallText(
                            text: '(click here to get your ',
                            size: 12,
                            fontWeight: FontWeight.bold),
                        GestureDetector(
                          onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Dashboard(),
                          ));
                        },
                          child: SmallText(
                              text:
                                  ' transaction id)',
                              size: 12,
                              color: AppColors.pinkColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
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
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5, bottom: 100),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Reason For Refund'),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
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
                                text: "Refund",
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
                                  side:
                                      BorderSide(color: AppColors.purpleColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
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
                                    builder: (context) => Refund(),
                                  ),
                                );
                              },
                              // ignore: sort_child_properties_last
                              child: BigText(
                                text: "Cancel",
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
                                  side:
                                      BorderSide(color: AppColors.purpleColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
