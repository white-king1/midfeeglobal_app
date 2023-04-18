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
              image: AssetImage('assets/Black png.png'),
              scale: 2,
            )),
          ),
          Divider(thickness: 4.07, color: Color(0xffd63384)),
          ListTile(
            leading: Icon(Icons.share,color: Color(0xffd63384),),
            title: Text('Place Order', style: Theme.of(context).textTheme.headline2!..copyWith(
                          color:Color(0xffd63384),
                        ),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => PlaceOrder()
                  ),
                ),
              );
            },
          ),
         Divider(
            thickness: 4.07,
            color: Color(0xffd63384),
          ),
          ListTile(
            leading: Icon(Icons.description,color: Color(0xffd63384),) ,
            title: Text('View Order Details'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => ViewOrder())));
            },
          ),
          Divider(
            thickness: 4.07,
            color: Color(0xffd63384),
          ),
          ListTile(
            leading: Icon(Icons.payments,color: Color(0xffd63384),),
            title: Text('Deposit'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Deposit())));
            },
          ),
           Divider(
            thickness: 4.07,
            color: Color(0xffd63384),
          ),
          
          ListTile(
            leading: Icon(Icons.remove,color: Color(0xffd63384),),
            title: Text('Withdrawal'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Withdrawal())));
            },
          ),
          Divider(
            thickness: 4.07,
            color: Color(0xffd63384),
          ),
          ListTile(
            leading: Icon(Icons.insights,color: Color(0xffd63384),),
            title: Text('Refund'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Refund())));
            },
          ),
          Divider(
            thickness: 4.07,
            color: Color(0xffd63384),
          ),
          
          ListTile(
            leading: Icon(Icons.summarize,color: Color(0xffd63384),),
            title: Text('Refund Details'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => RefundDetails())));
            },
          ),
          Divider(
            thickness: 4.07,
            color: Color(0xffd63384),
          ),
          ListTile(
            leading: Icon(Icons.report,color: Color(0xffd63384),),
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
            color: Color(0xffd63384),
          ),
          ListTile(
            leading: Icon(
                      Icons.forum,
                      color: AppColors.pinkColor,
                    ),
            title: Text('Chart With Us'),
            onTap: () {
              const url = "https://wa.me/message/6QB6U4SSXSKEC1";
                  launchURL(url);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: ((context) => AboutUs())));
            },
          ),
          Divider(thickness: 4.07, color: Color(0xffd63384)),
          ListTile(
            leading: Icon(Icons.exit_to_app,color: Color(0xffd63384)),
            title: Text('LogOut'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          Divider(thickness: 4.07, color: Color(0xffd63384)),
        ],
      ),
    );
  }
}
