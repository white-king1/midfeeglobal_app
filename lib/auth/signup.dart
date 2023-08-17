// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_import, non_constant_identifier_names, avoid_unnecessary_containers, deprecated_member_use, unnecessary_new, unnecessary_this

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:midfeeglobal_app/auth/login.dart';
import 'package:midfeeglobal_app/services/auth_service.dart';
import 'package:midfeeglobal_app/users/dashboard.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/view_model/register_vm.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  //drop down

  //check box

  bool Value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Image(image: AssetImage('assets/Black png.png')),
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
                  text: 'Sign Up',
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
                  text: 'Create An Acoount',
                  fontWeight: FontWeight.normal)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Consumer<RegisterVm>(
            builder: ((context, auth, child) {
              return Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Name'),
                          controller: auth.name,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Email'),
                          controller: auth.email,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Phone'),
                          controller: auth.phone,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Password'),
                          controller: auth.password,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Confirm Password'),
                          controller: auth.confirmPassword,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    buildCheckbox(),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: ElevatedButton(
                          onPressed: () => {
                            auth.register(context),
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => Dashboard())),
                          },
                          // ignore: sort_child_properties_last
                          child: BigText(
                            text: "Sign Up",
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
                    Row(
                      children: [
                        SizedBox(
                          height: 10,
                          width: 100,
                        ),
                        Center(
                          child: SizedBox(
                            child: SmallText(
                                text: 'Already have an account?',
                                size: 16,
                                color: AppColors.blueColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Login()));
                            },
                            child: SmallText(
                                color: AppColors.pinkColor,
                                text: 'Login',
                                size: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          width: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    ));
  }

  Widget buildCheckbox() => ListTile(
        onTap: () {
          setState(() {
            this.Value = !Value;
          });
        },
        leading: Checkbox(
            value: Value,
            onChanged: (bool? value) {
              setState(() {
                this.Value = !Value;
              });
            }),
        title: Text(
          'I  agree with your Terms and Condictions',
          style: TextStyle(
            color: AppColors.pinkColor,
            fontSize: 15,
          ),
        ),
      );

  // DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
  //     value: item,
  //     child: Text(
  //       item,
  //       style: TextStyle(fontSize: 16),
  //     ));
}
