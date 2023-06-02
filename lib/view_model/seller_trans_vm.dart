// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/models/seller_trans_response.dart';
import 'package:midfeeglobal_app/services/server.dart';

class SellertransVm extends ChangeNotifier{

   bool loading = false;
  final server = Server();

  Future getSellertrans(BuildContext context) async {
    var res = await server.getData('/sellertrans');
    final Map<String, dynamic> parsed = json.decode(res.body);
    final result =  SellertransResponse.fromJson(parsed);
    print(parsed);
    // notifyListeners();
    return result;
  }

}