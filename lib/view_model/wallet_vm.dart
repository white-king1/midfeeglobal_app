// ignore_for_file: avoid_print

import 'dart:convert';



import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/models/wallet_response.dart';
import 'package:midfeeglobal_app/services/server.dart';

class WalletVm extends ChangeNotifier{
 
  bool loading = false;
  final server = Server();

  Future getWallet(BuildContext context) async {
    var res = await server.getData('/wallet');
    final Map<String, dynamic> parsed = json.decode(res.body);
    final result =  WalletResponse.fromJson(parsed);
    print(parsed);
    // notifyListeners();
    return result;
  }

  
}