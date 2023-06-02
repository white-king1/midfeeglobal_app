// ignore_for_file: avoid_print, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/models/accept_order_response.dart';
import 'package:midfeeglobal_app/services/server.dart';

class AcceptOrderVm extends ChangeNotifier{
   bool loading = false;
  final server = Server();

  Future getAcceptOrder(BuildContext context, transaction_id) async {
    
    var res = await server.getData('/acceptorder/$transaction_id');
    final Map<String, dynamic> parsed = json.decode(res.body);
    final result =  AcceptOrderResponse.fromJson(parsed);
    print(parsed);
    // notifyListeners();
    return result;
}
}