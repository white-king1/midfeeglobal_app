// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, non_constant_identifier_names, duplicate_ignore, avoid_single_cascade_in_expression_statements, deprecated_member_use

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/static/bottom_sheet.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: AppColors.purpleColor,
        title: const Text(
          'PROFILE',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            Stack(
              children: [
                //  Positioned(
                //           bottom: 5.0,
                //           right: 3.0,
                //           child: InkWell(
                //             onTap: () {
                //               showBottomSheet(
                //                 context: context,
                //                 // ignore: avoid_types_as_parameter_names
                //                 builder: ((Builder) => bottomsheet()),
                //               );
                //             },
                //             // ignore: prefer_const_constructors
                //             child: Icon(
                //               Icons.camera_alt,
                //               color: Colors.white,
                //               size: 50.0,
                //             ),
                //           ),
                //         ),
                Column(
                  children: [
                    Center(
                      child: Container(
                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: AssetImage('assets/avatar.png'),
                                fit: BoxFit.cover),
                            color: Colors.white
                            ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                            ),
                            Row(
                              children: [
                                SizedBox(width: 280,),
                                InkWell(
                                  onTap: () {
                                    showBottomSheet(
                                      context: context,
                                      // ignore: avoid_types_as_parameter_names
                                      builder: ((Builder) => bottomsheet()),
                                    );
                                  },
                                  // ignore: prefer_const_constructors
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: AppColors.blueColor,
                                    size: 50.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 20,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(80),
                    ),
                  ),
                  BigText(
                    text: "Online ",
                    fontWeight: FontWeight.bold,
                    size: 12,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.pinkColor,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Material(
              color: AppColors.purpleColor,
              child: ListTile(
                title: BigText(
                  text: "Name: KELECHI NDUBUISI",
                  // text: "${prof.userFullname}",
                  fontWeight: FontWeight.bold,
                  // profileResponse.firstname
                  size: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(
              color: AppColors.pinkColor,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Material(
              color: AppColors.purpleColor,
              child: ListTile(
                title: BigText(
                  text: "Email: Kelechivctorn@gmail.com",
                  // text: "${prof.userEmail}",
                  fontWeight: FontWeight.bold,
                  size: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(
              color: AppColors.pinkColor,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Phone'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Country'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'State'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'City'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'ZipCode'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Address'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Bank Name'),
            ), 
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Account Name'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Account number'),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10, right: 20),
              child: SizedBox(
                width: 350,
                height: 50,
                // ignore: sort_child_properties_last
                child: ElevatedButton(
                  onPressed: () {
                    Flushbar(
                              title: "Your Profile",
                              message: "Has Been Updated Successfully!",
                              duration: Duration(seconds: 3),
                            )..show(context);
                    },
                  
                  // ignore: sort_child_properties_last
                  child: BigText(
                    text: "UPDATE",
                    fontWeight: FontWeight.bold,
                    size: 14,
                    color:Colors.white,
                  ),

                  style: ElevatedButton.styleFrom(
                    primary:
                        AppColors.purpleColor, //change background color of button
                    // onPrimary: Colors.yellow, //change text color of button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: AppColors.pinkColor),
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
    );
  }
}