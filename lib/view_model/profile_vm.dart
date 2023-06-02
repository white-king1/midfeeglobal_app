// ignore_for_file: unused_import, avoid_print, use_build_context_synchronously, avoid_single_cascade_in_expression_statements, non_constant_identifier_names

import 'dart:convert';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfeeglobal_app/models/profile_response.dart';
import 'package:midfeeglobal_app/services/server.dart';

class ProfileVm extends ChangeNotifier {
  final phone = TextEditingController();
  final country = TextEditingController();
  final state = TextEditingController();
  final city = TextEditingController();
  final zipcode = TextEditingController();
  final address = TextEditingController();
  final bankName = TextEditingController();
  final accountName = TextEditingController();
  final accountNumber = TextEditingController();
  bool loading = false;
  final server = Server();

  Future getProfile(BuildContext context) async {
    var res = await server.getData('/profile');
    final Map<String, dynamic> parsed = json.decode(res.body);
    final result = ProfileResponse.fromJson(parsed);
    print(parsed);
    // notifyListeners();
    return result;
  }

  Future<void>updateProfile(BuildContext context) async {
    loading = true;
    notifyListeners();

    final response = await server.postData({
      'phone': phone.text,
      'country': country.text,
      'state': state.text,
      'city': city.text,
      'zipcode': zipcode.text,
      'address': address.text,
      'bankName': bankName.text,
      'accountName': accountName.text,
      'accountNumber': accountNumber.text,
    }, '/update_profile');

    final Map<String, dynamic> result = json.decode(response.body);
    print(response.body);
    if (result['success'] == true) {
      Flushbar(
        title: "Done",
        message: "Profile updated",
        duration: const Duration(seconds: 3),
      )..show(context);
    }
    loading = false;
    notifyListeners();
  }
}
