// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, library_private_types_in_public_api, deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/auth/login.dart';
import 'package:midfeeglobal_app/auth/signup.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({ Key? key }) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(child: Image(image: AssetImage('assets/onbrd.png'))),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: BigText(
                text: 'Welcome Onboard.',
                color: AppColors.blueColor,
                size: 32,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 20),
            child: SizedBox(
              width: 350,
              height: 50,
              // ignore: sort_child_properties_last
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //please change Dashboard to Register
                      builder: (context) => Login(),
                    ),
                  );
                },
                // ignore: sort_child_properties_last
                child: BigText(
                  text: "Login",
                  fontWeight: FontWeight.bold,
                  size: 14,
                  color: AppColors.blueColor,
                ),

                style: ElevatedButton.styleFrom(
                  primary:
                      AppColors.purpleColor, //change background color of button
                  // onPrimary: Colors.yellow, //change text color of button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 20),
            child: SizedBox(
              width: 350,
              height: 50,
              // ignore: sort_child_properties_last
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //please change Dashboard to Register
                      builder: (context) => Signup(),
                    ),
                  );
                },
                // ignore: sort_child_properties_last
                child: BigText(
                  text: "Sign Up",
                  fontWeight: FontWeight.bold,
                  size: 14,
                  color: AppColors.blueColor,
                ),

                style: ElevatedButton.styleFrom(
                  primary: Colors.white, //change background color of button
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
            height: 20,
          ),
        ],
      )),
    );
  }
}