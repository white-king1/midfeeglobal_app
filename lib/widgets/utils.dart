// ignore_for_file: deprecated_member_use

import 'package:url_launcher/url_launcher.dart';
class Utils{
  static Future openLink({required String url})=> _launchUrl(url);

  static Future _launchUrl(String url) async {
    if(await canLaunch(url)){
      await launch(url);
    }
  }
  //how to link a text or button to compse email withyour email on it
  static Future openEmail({
    required String toEmail,
    required String subject,
    required String body
    }) async {
      final url = "mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(body)}" ;
      await _launchUrl(url);
    }

//How to link a button or text to make a call on your phone dail pad
  static Future openPhoneCall({required String phoneNumber})async {
    final url = "tel: $phoneNumber";

    await _launchUrl(url);
  }
  //How to link a button or text to sending sms to a user on your app
  static Future openSMS({required String phoneNumber})async {
    final url = "sms: $phoneNumber";

    await _launchUrl(url);
  }

}