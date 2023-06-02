
// ignore_for_file: avoid_print, avoid_single_cascade_in_expression_statements, non_constant_identifier_names, unused_import, use_build_context_synchronously

import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/services/server.dart';
import 'package:midfeeglobal_app/users/withdrawal.dart';

class WithdrawalVm extends ChangeNotifier{

  final amount = TextEditingController();
  final details = TextEditingController();

  bool loading = false;

  final server = Server();


  Future<void>Withdrawal(BuildContext context) async{

    loading = true;
     notifyListeners();
    
     final response = await server.postData({
      'amount': amount.text,
      'details': details.text,
      

     }, '/withdrawalpage');

     final Map<String, dynamic> result = json.decode(response.body);
    print(response.body);
    if (result['success'] == true) {
      Flushbar(
        title: "Done",
        message: "Successful Withdrawal",
        duration: const Duration(seconds: 3),
      )..show(context);
    }
    loading = false;
    notifyListeners();
  }

}