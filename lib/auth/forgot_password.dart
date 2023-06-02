// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use, unnecessary_new


import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';



class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color:Colors.white
          //  Color(0xff1A214F),
        ),
        backgroundColor: AppColors.purpleColor,
        elevation: 0,
        title: const Text('Forgot Password',
        style: TextStyle(color:Colors.white
        //  Color(0xff1A214F)
        ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(children: [
              SizedBox(
                height: 80,
              ),
              Image(image: AssetImage('assets/Black png.png')),
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    // padding: EdgeInsets.only(bottom: -10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          color: AppColors.pinkColor,
                          text: 'Forgot Password',
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                        Text(
                          'Enter The Email You Registered With',
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColors.pinkColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.purpleColor),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Email',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.unsubscribe_outlined,
                      color: AppColors.pinkColor,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              
              SizedBox(
                width: 350,
                height: 50,
                child: Container(
                  // ignore: sort_child_properties_last
                  child: ElevatedButton(
                    onPressed: () {
                      // ignore: avoid_single_cascade_in_expression_statements
                      Flushbar(
                              title: "Please,",
                              message: "Kindly Check Your Email To Reset Your Password!",
                              duration: Duration(seconds: 3),
                            )..show(context);
                    },
                    // ignore: sort_child_properties_last
                    child: BigText(
                      text: "Submit",
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.purpleColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
