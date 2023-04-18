// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class Support extends StatefulWidget {
  Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  //to add a URL TO A PAGE .
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw "Could not launch $url";
    }
  }
  //to link a link a text or a button to send email page with your email address

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
                      text: 'Support Team',
                      size: 24,
                      fontWeight: FontWeight.bold),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                // boxShadow: [
                //   BoxShadow(
                //       color: Color.fromARGB(255, 2, 49, 87),
                //       blurRadius: 10,
                //       offset: Offset(0, 4))
                // ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: Center(
                child: Image.asset(
                  'assets/Black png.png',
                  scale: 2,
                ),
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 1, 25, 44),
              indent: 10,
              endIndent: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.pinkColor,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: GestureDetector(
                onTap: () {
                  const url = "https://wa.me/message/6QB6U4SSXSKEC1";
                  launchURL(url);
                },
                child: Material(
                  child: ListTile(
                    leading: Icon(
                      Icons.forum,
                      color: AppColors.pinkColor,
                    ),
                    title: Text('Live Chat',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.pinkColor)),
                    trailing: Icon(Icons.arrow_forward_ios,color: AppColors.purpleColor,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.pinkColor,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: GestureDetector(
                onTap: () => Utils.openSMS(phoneNumber: "+2349117951726"),
                child: Material(
                  child: ListTile(
                    leading: Icon(
                      Icons.face,
                      color: AppColors.pinkColor,
                    ),
                    title: Text('Send Feedback',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.pinkColor)),
                    trailing: Icon(Icons.arrow_forward_ios,color: AppColors.purpleColor,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: Text(
                "Social Media",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: AppColors.purpleColor),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.pinkColor,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: GestureDetector(
                onTap: () {
                  const url = "https://web.facebook.com/midfeeglobal/";
                  launchURL(url);
                },
                child: Material(
                  child: ListTile(
                    leading: Image.asset("assets/fblogo.png"),
                    title: Text('@midfeeglobal',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.pinkColor)),
                    trailing: Icon(Icons.arrow_forward_ios,color: AppColors.purpleColor,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.pinkColor,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: GestureDetector(
                onTap: () {
                  const url = "https://www.instagram.com/midfeeglobal/";
                  launchURL(url);
                },
                child: Material(
                  child: ListTile(
                    leading: Image.asset("assets/instlogo.png"),
                    title: Text('@midfeeglobal',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.pinkColor)),
                    trailing: Icon(Icons.arrow_forward_ios,color: AppColors.purpleColor,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.pinkColor,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: GestureDetector(
                onTap: () {
                  const url =
                      "https://www.linkedin.com/company/79737061/admin/";
                  launchURL(url);
                },
                child: Material(
                  child: ListTile(
                    leading: Image.asset("assets/linklogo.png"),
                    title: Text('Midfeeglobal',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.pinkColor)),
                    trailing: Icon(Icons.arrow_forward_ios,color: AppColors.purpleColor,),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: Text("Contact Us",
                    style: Theme.of(context).textTheme.headline4!.copyWith(color: AppColors.purpleColor))),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.pinkColor,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: GestureDetector(
                onTap: () => Utils.openPhoneCall(phoneNumber: "+2349117951726"),
                child: Material(
                  child: ListTile(
                    leading: Icon(
                      Icons.support_agent,
                      color: AppColors.pinkColor,
                    ),
                    title: Text('Phone Call',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.pinkColor)),
                    trailing: Icon(Icons.arrow_forward_ios,color: AppColors.purpleColor,),
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.pinkColor,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13)),
              ),
              child: GestureDetector(
                onTap: () => Utils.openEmail(
                    toEmail: "hello@midfeeglobal@gmail.com",
                    subject: "Swift Response",
                    body: ""),
                // onTap: (){launchEmail(toEmail: "Bankablewisdom@gmail.com", subject: "", message: "");

                // },
                child: Material(
                  child: ListTile(
                    leading: Icon(
                      Icons.attach_email,
                      color: AppColors.pinkColor,
                    ),
                    title: Text('Email Us',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.pinkColor)),
                    trailing: Icon(Icons.arrow_forward_ios,color: AppColors.purpleColor,),
                  ),
                ),
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 1, 25, 44),
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
