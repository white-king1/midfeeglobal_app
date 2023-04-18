// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/screen/onboarding_screen.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    nextPage();
  }

  Future<void> nextPage() async {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScreen(),
          ));
    });
  }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.white,
      
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Center(
              child: Container(
                width: 350,
                height: 200,
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/Black png.png'),
            ),
             BigText(
                    text: 'GLOBAL.',
                    color: AppColors.purpleColor,
                    size: 32,
                    fontWeight: FontWeight.bold),
                  ],
                ),
              ),
            
            ),
            
          ],
        ),
      ),
    );
  }
}