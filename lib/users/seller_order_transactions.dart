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
                      height: 400,
                      width: 400,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.13)),
                      ),
                      child: Column(
                        children: [
                          Material(
                            child: ListTile(
                              title: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        BigText(
                                          text:
                                              "Transaction ID::${sell.data?.transactionId} ",
                                          fontWeight: FontWeight.bold,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.copy_sharp,
                                          color: AppColors.purpleColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 10,
                            endIndent: 10,
                            indent: 10,
                            thickness: 2,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Material(
                            child: ListTile(
                              title: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    BigText(
                                      text:
                                          "Description::${sell.data?.description} ",
                                      fontWeight: FontWeight.bold,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 10,
                            endIndent: 10,
                            indent: 10,
                            thickness: 2,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Material(
                            child: ListTile(
                              title: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    BigText(
                                      text:
                                          "Duration in (Days)::${sell.data?.period} ",
                                      fontWeight: FontWeight.bold,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 10,
                            endIndent: 10,
                            indent: 10,
                            thickness: 2,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Material(
                            child: ListTile(
                              title: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    BigText(
                                      text: "Quantity::${sell.data?.quantity} ",
                                      fontWeight: FontWeight.bold,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 10,
                            endIndent: 10,
                            indent: 10,
                            thickness: 2,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Material(
                            child: ListTile(
                              title: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    BigText(
                                      text:
                                          "Total Amount::${sell.data?.total} ",
                                      fontWeight: FontWeight.bold,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 10,
                            endIndent: 10,
                            indent: 10,
                            thickness: 2,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Material(
                            child: ListTile(
                              title: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    BigText(
                                      text: "Status::${sell.data?.status} ",
                                      fontWeight: FontWeight.bold,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 10,
                            endIndent: 10,
                            indent: 10,
                            thickness: 2,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Material(
                            child: ListTile(
                              title: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    BigText(
                                      text: "Date::${sell.data?.createdAt} ",
                                      fontWeight: FontWeight.bold,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 10,
                            endIndent: 10,
                            indent: 10,
                            thickness: 2,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              margin:
                                  EdgeInsets.only(top: 20, left: 10, right: 10),
                              child: SizedBox(
                                width: 120,
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
                                    size: 10,
                                    color: Colors.white,
                                  ),

                                  style: ElevatedButton.styleFrom(
                                    primary: AppColors
                                        .pinkColor, //change background color of button
                                    // onPrimary: Colors.yellow, //change text color of button
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
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
              SizedBox(
                height: 30,
              ),
            ])));
  }
}
