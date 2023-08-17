// ignore_for_file: avoid_print, avoid_single_cascade_in_expression_statements, non_constant_identifier_names, use_build_context_synchronously, unused_import

import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfeeglobal_app/services/server.dart';
import 'package:midfeeglobal_app/users/accept_order.dart';

class ViewOrderVm extends ChangeNotifier {
  final transaction_id = TextEditingController();

  bool loading = false;
  final server = Server();

  Future<void> Vieworder(BuildContext context) async {
          await Get.to(AcceptOrder(transactionId: transaction_id.text),);

  }
}
