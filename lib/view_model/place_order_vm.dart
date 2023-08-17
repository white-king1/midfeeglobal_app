// ignore_for_file: avoid_print, avoid_single_cascade_in_expression_statements, unused_import, use_build_context_synchronously, non_constant_identifier_names

import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfeeglobal_app/services/server.dart';
import 'package:midfeeglobal_app/users/accept_order.dart';

class PlaceOrderVm extends ChangeNotifier {
  final description = TextEditingController();
  final period = TextEditingController();
  final quantity = TextEditingController();
  final deposit = TextEditingController();

  bool loading = false;
  final server = Server();

  Future<void> Placeorder(BuildContext context) async {
    loading = true;
    notifyListeners();

    final response = await server.postData({
      'description': description.text,
      'period': period.text,
      'quantity': quantity.text,
      'deposit': deposit.text,
    }, '/placeorderapi');

    final Map<String, dynamic> result = json.decode(response.body);
    print(response.body);
    loading = false;
    notifyListeners();

    if (result['success'] == true) {
      String transactionId = result['place']['transaction_id'];
      Flushbar(
        title: "Done",
        message: "You've Successfully Placed an Order ",
        duration: const Duration(seconds: 3),
      )..show(context);
      await Get.to(AcceptOrder(
        transactionId: transactionId,
      ));
    }
  }
}
