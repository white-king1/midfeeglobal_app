// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_constructors_in_immutables, non_constant_identifier_names, must_call_super, sized_box_for_whitespace, avoid_unnecessary_containers, unnecessary_new, unnecessary_this, unused_import

import 'package:flutter/material.dart';

import 'package:midfeeglobal_app/auth/forgot_password.dart';
import 'package:midfeeglobal_app/auth/reset_password.dart';
import 'package:midfeeglobal_app/auth/signup.dart';
import 'package:midfeeglobal_app/models/login_response.dart';
import 'package:midfeeglobal_app/users/dashboard.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/view_model/auth_vm.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // for password visibility & invisibility
  bool _passwordVisible = true;

  //  for check box
  bool Value = false;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Consumer<AuthVm>(builder: (context, auth, child) {
            return Form(
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    width: 350,
                    height: 200,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/Black png.png'),
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

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      // padding: EdgeInsets.only(bottom: -10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                            color: AppColors.pinkColor,
                            text: 'Log In',
                            fontWeight: FontWeight.bold,
                            size: 18,
                          ),
                          Text(
                            'Welcome Back!',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffd63384),
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
                      borderSide: BorderSide(color: AppColors.pinkColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Email',
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.unsubscribe_outlined,
                        color: Color(0xffc934ff),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  controller: auth.email,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.pinkColor),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Color(0xffc934ff),
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                  controller: auth.password,
                ),
                // Testing a CheckBox start here

                // tetsting a check box ending here
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
                        auth.login(context),
                        //  Navigator.of(context).push(
                        //   MaterialPageRoute(builder: (context) => Dashboard())),
                      },
                      // ignore: sort_child_properties_last
                      child: BigText(
                        text: "Login",
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
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BigText(
                      text: "Don't have an account?",
                      size: 16,
                      color: AppColors.blueColor,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Signup(),
                        ));
                      },
                      child: BigText(
                        color: AppColors.pinkColor,
                        text: "Signup",
                        size: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BigText(
                      text: "You can",
                      size: 16,
                      color: AppColors.blueColor,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ResetPassword(),
                        ));
                      },
                      child: BigText(
                        color: AppColors.pinkColor,
                        text: "Reset Password!",
                        size: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ]),
            );
          }),
        ),
      ),
    );
  }

  // for check box
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
          'Remember Me',
          style: TextStyle(
            color: AppColors.pinkColor,
            fontSize: 15,
          ),
        ),
        trailing: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForgotPassword(),
                ));
          },
          child: SmallText(
            color: AppColors.pinkColor,
            text: 'Forgot Password?',
            fontWeight: FontWeight.bold,
            size: 18,
          ),
        ),
      );
}
