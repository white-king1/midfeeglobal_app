// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/models/buyer_trans_response.dart';
import 'package:midfeeglobal_app/services/server.dart';

class BuyertransVm extends ChangeNotifier{
  bool loading = false;
  final server = Server();

  Future getBuyertrans(BuildContext context) async {
    var res = await server.getData('/buyertrans');
    final Map<String, dynamic> parsed = json.decode(res.body);
    final result =  BuyertransResponse.fromJson(parsed);
    print(parsed);
    // notifyListeners();
    return result;
  }
}