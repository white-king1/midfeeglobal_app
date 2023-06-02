// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names, prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/view_model/deposit_vm.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';
import 'package:provider/provider.dart';

class Deposit extends StatefulWidget {
  const Deposit({Key? key}) : super(key: key);

  @override
  _DepositState createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
  final items = ["NGN ₦", "GHS₵", "EUR€", "GBP£", "USD\$"];
  String? value;
  bool Value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          backgroundColor: AppColors.purpleColor,
          title: BigText(
            text: 'DEPOSIT',
            fontWeight: FontWeight.bold,
            size: 24,
            color: Colors.white,
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                  height: 200,
                  child: Image(image: AssetImage('assets/deposit.png'))),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Text(
                  "MAKE A DEPOSIT",
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
                      text: 'Quickly make a deposit,',
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
              Consumer<DepositVm>(builder: (context, auth, child) {
                return Form(
                  child: Column(
                    children: [
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
                            controller: auth.amount,
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
                      Row(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 10, right: 20),
                            child: SizedBox(
                              width: 150,
                              height: 50,
                              // ignore: sort_child_properties_last
                              child: ElevatedButton(
                                onPressed: () => {

                                  auth.Deposit(context)
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => AcceptOrder(),
                                  //   ),
                                  // );
                                },
                                // ignore: sort_child_properties_last
                                child: BigText(
                                  text: "Deposit",
                                  fontWeight: FontWeight.bold,
                                  size: 14,
                                  color: Colors.white,
                                ),

                                style: ElevatedButton.styleFrom(
                                  primary: AppColors
                                      .purpleColor, //change background color of button
                                  // onPrimary: Colors.yellow, //change text color of button
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: AppColors.purpleColor),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 10, right: 20),
                            child: SizedBox(
                              width: 150,
                              height: 50,
                              // ignore: sort_child_properties_last
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Deposit(),
                                    ),
                                  );
                                },
                                // ignore: sort_child_properties_last
                                child: BigText(
                                  text: "Cancel",
                                  fontWeight: FontWeight.bold,
                                  size: 14,
                                  color: AppColors.purpleColor,
                                ),

                                style: ElevatedButton.styleFrom(
                                  primary: Colors
                                      .white, //change background color of button
                                  // onPrimary: Colors.yellow, //change text color of button
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: AppColors.purpleColor),
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
                );
              }),
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
