// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, unused_import, deprecated_member_use, unused_local_variable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/models/accept_order_response.dart';
import 'package:midfeeglobal_app/models/seller_trans_response.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/view_model/accept_order_vm.dart';
import 'package:midfeeglobal_app/view_model/seller_trans_vm.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';
import 'package:provider/provider.dart';

class SellerOrderTransactions extends StatefulWidget {
  const SellerOrderTransactions({super.key, required this.transactionId});

  final transactionId;
  @override
  _SellerOrderTransactionsState createState() =>
      _SellerOrderTransactionsState();
}

class _SellerOrderTransactionsState extends State<SellerOrderTransactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.purpleColor,
          title: BigText(
            text: 'SELLER ORDER TRANSACTIONS',
            fontWeight: FontWeight.bold,
            size: 24,
            color: Colors.white,
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            padding:
                const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 20),
            child: Column(children: [
              FutureBuilder(
                  future: Provider.of<AcceptOrderVm>(context, listen: false)
                      .getAcceptOrder(context, widget.transactionId),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text('An error occured'),
                      );
                    }
                    AcceptOrderResponse sell = snapshot.data;
                    return Container(
                      width: 450,
                      height: 270,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.purpleColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Material(
                            child: ListTile(
                              tileColor: Colors.white,
                              leading: BigText(
                                text:
                                    "Transaction ID:: ${sell.data?.transactionId}",
                                fontWeight: FontWeight.bold,
                                size: 18,
                              ),
                              title: BigText(
                                text: "Description:: ${sell.data?.description}",
                                fontWeight: FontWeight.bold,
                                size: 18,
                              ),
                              subtitle: Column(
                                children: [
                                  SmallText(
                                    text: "Quantity::${sell.data?.quantity}",
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.purpleColor,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SmallText(
                                    text: "Period::${sell.data?.period}",
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.purpleColor,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  BigText(
                                    text: "Amount::${sell.data?.deposit}",
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.purpleColor,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  BigText(
                                    text: "Status::${sell.data?.status}",
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.purpleColor,
                                    size: 14,
                                  ),
                                ],
                              ),
                              trailing: BigText(
                                    text: "Date::${sell.data?.createdAt}",
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.purpleColor,
                                    size: 14,
                                  ), 
                            ),
                          ),
                          SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(top: 20, left: 10, right: 10),
                                  child: SizedBox(
                                    width: 60,
                                    height: 50,
                                    // ignore: sort_child_properties_last
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(

                                        //     builder: (context) => Signup(),
                                        //   ),
                                        // );
                                      },
                                      // ignore: sort_child_properties_last
                                      child: BigText(
                                        text: "Recieved",
                                        fontWeight: FontWeight.bold,
                                        size: 14,
                                        color: Colors.white,
                                      ),

                                      style: ElevatedButton.styleFrom(
                                        primary: AppColors
                                            .purpleColor, //change background color of button
                                        // onPrimary: Colors.yellow, //change text color of button
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15.0),
                                          side: BorderSide(
                                              color: AppColors.purpleColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    );
                  }),
            ])));
  }
}
