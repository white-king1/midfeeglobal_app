// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: AppColors.purpleColor,
        title: BigText(
          text: 'ABOUT US',
          fontWeight: FontWeight.bold,
          size: 24,
          color: Colors.white,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Center(child: Image(image: AssetImage('assets/Black png.png'))),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 70,
              ),
              Divider(thickness: 4.07, color: Color(0xffd63384)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: BigText(
                      color: Color(0xff1A214F),
                      text:
                          'Get an Intermidiary between a Buyer and a Seller with Midfeeglobal',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(thickness: 4.07, color: Color(0xffd63384)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: SmallText(
                      color: Color(0xff1A214F),
                      text:
                          'MIDFEEGLOBAL Stands as an intermediary between both parties, by mediating and securing any cash deposit made for a particular service, or a group of services rendered or delivered and  until both parties are satisfied,then we release the funds to whom its meant for between both parties.',
                      fontWeight: FontWeight.bold),
                ),
              ),

              Divider(thickness: 4.07, color: Color(0xffd63384)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: BigText(
                      color: Color(0xff1A214F),
                      text: 'Our Story',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(thickness: 4.07, color: Color(0xffd63384)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: SmallText(
                      color: Color(0xff1A214F),
                      text:
                          ' We created Midfeeglobal because we believe all online transactions should be safe and secured. The platform is an option for "Payment on Delivery” from your convinience at home or any where.',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(thickness: 4.07, color: Color(0xffd63384)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: BigText(
                      color: Color(0xff1A214F),
                      text: 'How do we achieve this?',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(thickness: 4.07, color: Color(0xffd63384)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: SmallText(
                      color: Color(0xff1A214F),
                      text:
                          'Once  you are Signedup on the  platform,it provides a safe transaction-algorithm that ensures every payments,deposits,refunds,reports and withdrwawals are available to users at anytime. And we ensure quality Customer services .',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
