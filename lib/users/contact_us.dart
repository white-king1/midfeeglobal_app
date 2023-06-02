// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_unnecessary_containers, duplicate_ignore, unnecessary_new

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/utils/colors.dart';

import 'package:midfeeglobal_app/widgets/big_text.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: AppColors.purpleColor,
        title: BigText(
          text: 'CONTACT US',
          fontWeight: FontWeight.bold,
          size: 24,
          color: Colors.white,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              child: Column(children: [
                Image(image: AssetImage('assets/logo.png')),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    BigText(
                        text: 'Contact Information',
                        color: Color(0xff1A214F),
                        fontWeight: FontWeight.bold)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone',
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, bottom: 200),
                    border: OutlineInputBorder(),
                    labelText: 'Message',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => AboutVendor()));
                      },
                      // ignore: sort_child_properties_last
                      child: BigText(
                        text: "Submit",
                        color: Color(0xff1A214F),
                        fontWeight: FontWeight.normal,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffFF9E00),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}