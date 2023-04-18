// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';

class Withdrawal extends StatefulWidget {
  const Withdrawal({ Key? key }) : super(key: key);

  @override
  _WithdrawalState createState() => _WithdrawalState();
}

class _WithdrawalState extends State<Withdrawal> {
  final items = ["NGN ₦", "GHS₵", "EUR€", "GBP£", "USD\$"];
  String? value;
  bool Value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: AppColors.purpleColor,
          elevation: 0,
          title: Row(
            children: [
              BigText(
                  color: Colors.white,
                  text: 'Withdrawal',
                  size: 24,
                  fontWeight: FontWeight.bold),
            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 200,
                child: Image(image: AssetImage('assets/withdraw.png'))
                ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Text(
                  "EASY WITHDRAWAL",
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
                      text: 'Make a quick withdrawal,',
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
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'BANK NAME'),
                    ),
                     SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'ACCOUNT HOLDER\'S NAME'),
                    ),
                     SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'ACCOUNT NUMBER'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 450,
                      height: 50,
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.only(
                          bottom: 10, top: 10, left: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                        hint: Text('Currency'),
                        value: value,
                        iconSize: 16,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          size: 30,
                          color: Colors.grey,
                        ),
                        isExpanded: true,
                        items: items.map(buildMenuItem).toList(),
                        onChanged: (value) =>
                            setState(() => this.value = value),
                      )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Amount'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Password'),
                    ),
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
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => AcceptOrder(),
                                //   ),
                                // );
                              },
                              // ignore: sort_child_properties_last
                              child: BigText(
                                text: "Withdraw",
                                fontWeight: FontWeight.bold,
                                size: 14,
                                color: AppColors.blueColor,
                              ),

                              style: ElevatedButton.styleFrom(
                                primary: AppColors
                                    .purpleColor, //change background color of button
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

                                    builder: (context) => Withdrawal(),
                                  ),
                                );
                              },
                              // ignore: sort_child_properties_last
                              child: BigText(
                                text: "Cancel",
                                fontWeight: FontWeight.bold,
                                size: 14,
                                color: AppColors.blueColor,
                              ),

                              style: ElevatedButton.styleFrom(
                                primary: Colors.white, //change background color of button
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
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontSize: 16),
      ));
  
  
}