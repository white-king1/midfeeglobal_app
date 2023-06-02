// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use, unnecessary_new, unused_import

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/users/body.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';

class NewDetailsPage extends StatelessWidget {
  const NewDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purpleColor,
      appBar: AppBar(
        
        backgroundColor: AppColors.purpleColor,
        title: BigText(
          text: 'ORDER DETAILS',
          fontWeight: FontWeight.bold,
          size: 24,
          color: Colors.white,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  child: Column(
                    children: [
                      BigText(
                        text: 'Detailed information about your order',
                        fontWeight: FontWeight.bold,
                        size: 16,
                        color: Colors.white,
                      ),
                      SizedBox(height: 50,),
                      Row(
                        children: [
                          SmallText(
                              text:
                                  'Quickly tap the Receive.',
                              size: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Image(
                              image: AssetImage('assets/Black png.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            // Body(),
          ],
        ),
      ),
    );
  }
}
