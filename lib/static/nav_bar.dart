// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/auth/login.dart';
import 'package:midfeeglobal_app/users/about_us.dart';
import 'package:midfeeglobal_app/users/contact_us.dart';
import 'package:midfeeglobal_app/users/deposit.dart';
import 'package:midfeeglobal_app/users/place_order.dart';
import 'package:midfeeglobal_app/users/refund.dart';
import 'package:midfeeglobal_app/users/refund_details.dart';
import 'package:midfeeglobal_app/users/view_order.dart';
import 'package:midfeeglobal_app/users/withdrawal.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});
launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw "Could not launch $url";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(15.0),
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              '',
              // style: TextStyle(
              //   color: Color.fromARGB(255, 223, 144, 40),
              // ),
            ),
            accountEmail: Text(
              '',
              // style: TextStyle(
              //   color: Color.fromARGB(255, 223, 144, 40),
              // ),
            ),
            
            decoration: BoxDecoration(
                // color: Colors.blue,
              image: DecorationImage(
              image: AssetImage('assets/Black png.png',),
              scale: 2,
            )),
          ),
          Divider(thickness: 4.07, color: AppColors.purpleColor),
          ListTile(
            leading: Icon(Icons.share,color: AppColors.purpleColor,),
            title: Text('Place Order', style: Theme.of(context).textTheme.headline2!..copyWith(
                          color:AppColors.purpleColor,
                        ),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => PlaceOrder(transactionId: null)
                  ),
                ),
              );
            },
          ),
         Divider(
            thickness: 4.07,
            color: AppColors.purpleColor,
          ),
          ListTile(
            leading: Icon(Icons.description,color: AppColors.purpleColor,) ,
            title: Text('View Order Details'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => ViewOrder(transactionId: null))));
            },
          ),
          Divider(
            thickness: 4.07,
            color: AppColors.purpleColor,
          ),
          ListTile(
            leading: Icon(Icons.payments,color: AppColors.purpleColor,),
            title: Text('Deposit'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Deposit())));
            },
          ),
           Divider(
            thickness: 4.07,
            color: AppColors.purpleColor,
          ),
          
          ListTile(
            leading: Icon(Icons.remove,color: AppColors.purpleColor,),
            title: Text('Withdrawal'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Withdrawal())));
            },
          ),
          Divider(
            thickness: 4.07,
            color: AppColors.purpleColor,
          ),
          ListTile(
            leading: Icon(Icons.insights,color: AppColors.purpleColor,),
            title: Text('Refund'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Refund())));
            },
          ),
          Divider(
            thickness: 4.07,
            color: AppColors.purpleColor,
          ),
          
          ListTile(
            leading: Icon(Icons.summarize,color: AppColors.purpleColor,),
            title: Text('Refund Details'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => RefundDetails())));
            },
          ),
          Divider(
            thickness: 4.07,
            color: AppColors.purpleColor,
          ),
          ListTile(
            leading: Icon(Icons.report,color: AppColors.purpleColor,),
            title: Text('Report Transction'),
            onTap: () {
              const url = "https://wa.me/message/6QB6U4SSXSKEC1";
                  launchURL(url);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: ((context) => ContactUs())));
            },
          ),
          Divider(
            thickness: 4.07,
            color: AppColors.purpleColor,
          ),
          ListTile(
            leading: Icon(
                      Icons.forum,
                      color: AppColors.purpleColor,
                    ),
            title: Text('Chart With Us'),
            onTap: () {
              const url = "https://wa.me/message/6QB6U4SSXSKEC1";
                  launchURL(url);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: ((context) => AboutUs())));
            },
          ),
          Divider(thickness: 4.07, color: AppColors.purpleColor),
          ListTile(
            leading: Icon(Icons.exit_to_app,color: AppColors.purpleColor),
            title: Text('LogOut'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          Divider(thickness: 4.07, color: AppColors.purpleColor),
        ],
      ),
    );
  }
}
