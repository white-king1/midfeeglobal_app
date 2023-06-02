// ignore_for_file: unused_local_variable, non_constant_identifier_names, avoid_single_cascade_in_expression_statements, avoid_types_as_parameter_names, avoid_print, use_build_context_synchronously

import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/services/server.dart';

class DepositVm extends ChangeNotifier{
  final amount = TextEditingController();
  final password = TextEditingController();

  bool loading = false; 
  final sever = Server();

  Future<void>Deposit(BuildContext context) async {
     
     loading = true;
     notifyListeners();
    
     final response = await sever.postData({
      'amount': amount.text,
      'pssword': password.text,

     }, '/depositpage');

     final Map<String, dynamic> result = json.decode(response.body);
    print(response.body);
    if (result['success'] == true) {
      Flushbar(
        title: "Done",
        message: "You've Successfully Made A Deposit ",
        duration: const Duration(seconds: 3),
      )..show(context);
    }
    loading = false;
    notifyListeners();
  }
}