// ignore_for_file: prefer_const_constructors_in_immutables, unused_import, unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, duplicate_ignore, sized_box_for_whitespace, deprecated_member_use, unused_local_variable, prefer_typing_uninitialized_variables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:intl/intl.dart';
import 'package:midfeeglobal_app/models/buyer_trans_response.dart';
import 'package:midfeeglobal_app/models/profile_response.dart';
import 'package:midfeeglobal_app/models/seller_trans_response.dart';
import 'package:midfeeglobal_app/models/wallet_response.dart';
import 'package:midfeeglobal_app/static/bottom_sheet.dart';
import 'package:midfeeglobal_app/static/nav_bar.dart';
import 'package:midfeeglobal_app/users/buyer_order_transactions.dart';
import 'package:midfeeglobal_app/users/dashboard.dart';
import 'package:midfeeglobal_app/users/responsive_carousel.dart';
import 'package:midfeeglobal_app/users/seller_order_transactions.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/view_model/accept_order_vm.dart';
import 'package:midfeeglobal_app/view_model/buyer_trans_vm.dart';
import 'package:midfeeglobal_app/view_model/profile_vm.dart';
import 'package:midfeeglobal_app/view_model/seller_trans_vm.dart';
import 'package:midfeeglobal_app/view_model/view_order_vm.dart';
import 'package:midfeeglobal_app/view_model/wallet_vm.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';
import 'package:midfeeglobal_app/widgets/small_text.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: AppColors.purpleColor,
        title: BigText(
          text: 'DASHBOARD',
          fontWeight: FontWeight.bold,
          size: 24,
          color: Colors.white,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Container(
              width: 450,
              height: 270,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.purpleColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 200,
                            height: 200,
                            child:
                                Image(image: AssetImage('assets/avatar.png')),
                          ),
                          Positioned(
                            bottom: 5.0,
                            right: 10.0,
                            child: InkWell(
                              onTap: () {
                                showBottomSheet(
                                  context: context,
                                  // ignore: avoid_types_as_parameter_names
                                  builder: ((Builder) => bottomsheet()),
                                );
                              },
                              // ignore: prefer_const_constructors
                              child: Icon(
                                Icons.camera_alt,
                                color: AppColors.blueColor,
                                size: 15.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      FutureBuilder(
                          future: Provider.of<ProfileVm>(context, listen: false)
                              .getProfile(context),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(
                                child: CircularProgressIndicator.adaptive(),
                              );
                            } else if (snapshot.hasError) {
                              return Center(
                                child: Text('An error occured'),
                              );
                            }
                            ProfileResponse prof = snapshot.data;
                            return Column(
                              children: [
                                BigText(
                                  color: Colors.white,
                                  text: '${prof.data?.name}',
                                  fontWeight: FontWeight.bold,
                                  size: 14,
                                ),
                                BigText(
                                  color: Colors.white,
                                  text: '${prof.data?.email}',
                                  fontWeight: FontWeight.bold,
                                  size: 14,
                                ),
                              ],
                            );
                          }),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FutureBuilder(
                      future: Provider.of<WalletVm>(context, listen: false)
                          .getWallet(context),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        } else if (snapshot.hasError) {
                          return Center(
                            child: Text('An error occured'),
                          );
                        }
                        WalletResponse rof = snapshot.data;
                        return Expanded(
                          child: ListView.builder(
                              itemCount: rof.wallet?.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                Wallet wallet = rof.wallet![index];
                                return Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    BigText(
                                      color: Colors.white,
                                      text: 'Available Balance',
                                      fontWeight: FontWeight.bold,
                                      size: 16,
                                    ),
                                    SmallText(
                                        text: '₦${wallet.balance}',
                                        color: Colors.white,
                                        size: 14,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    BigText(
                                      color: Colors.white,
                                      text: 'Pending Balance',
                                      fontWeight: FontWeight.bold,
                                      size: 16,
                                    ),
                                    SmallText(
                                        text: '₦${wallet.pendingBalance}',
                                        color: Colors.white,
                                        size: 14,
                                        fontWeight: FontWeight.bold),
                                  ],
                                );
                              }),
                        );
                      }),
                ],
              ),
            ),
            ResponsiveCarousel(),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.storefront,
                    color: AppColors.purpleColor,
                    size: 18,
                  ),
                  title: BigText(
                    text: 'Seller Order Transactions',
                    fontWeight: FontWeight.bold,
                    size: 18,
                    color: AppColors.purpleColor,
                  ),
                  trailing: Icon(
                    Icons.arrow_downward,
                    color: AppColors.purpleColor,
                    size: 18,
                  ),
                ),
              ],
            ),
            FutureBuilder(
              future: Provider.of<SellertransVm>(context, listen: false)
                  .getSellertrans(context),
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
                SellertransResponse sell = snapshot.data;
                return Consumer<ViewOrderVm>(builder: (context, auth, child) {
                  return GestureDetector(
                    onTap: () {
                      auth.Vieworder(context);
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     //please change Dashboard to Register
                      //     builder: (context) => SellerOrderTransactions(transactionId: Transaction_Id),
                      //   ),
                      // );
                    },
                    child: ListView.builder(
                        itemCount: sell.seller?.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          Seller seller = sell.seller![index];
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.13)),
                            ),
                            child: Material(
                              child: ListTile(
                                tileColor: Colors.white,
                                leading: Icon(
                                  Icons.receipt,
                                  color: AppColors.purpleColor,
                                  size: 30,
                                ),
                                title: BigText(
                                  text:
                                      "Transaction_Id: ${seller.transactionId}",
                                  fontWeight: FontWeight.bold,
                                  size: 16,
                                ),
                                subtitle: SmallText(
                                  text: "Description:: ${seller.description}",
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.purpleColor,
                                  size: 14,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.purpleColor,
                                  size: 30,
                                ),
                              ),
                            ),
                          );
                        }),
                  );
                });
              },
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 10,
              endIndent: 100,
              indent: 100,
              thickness: 2,
              color: AppColors.pinkColor,
            ),
            SizedBox(
              height: 10,
            ),
            // Container(
            //   width: 450,
            //   height: 50,
            //   margin: EdgeInsets.all(10),
            //   padding: EdgeInsets.all(10),
            //   decoration: BoxDecoration(
            //     color: AppColors.purpleColor,
            //     borderRadius: BorderRadius.circular(30),
            //     boxShadow: [
            //       BoxShadow(
            //           color: AppColors.pinkColor,
            //           blurRadius: 10,
            //           offset: Offset(0, 4))
            //     ],
            //   ),
            //   child: Row(
            //     children: [
            //       SizedBox(
            //         width: 20,
            //       ),
            //       Icon(
            //         Icons.bar_chart,
            //         color: Colors.white,
            //         size: 40,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Icon(
            //         Icons.pie_chart,
            //         color: Colors.white,
            //         size: 40,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Icon(
            //         Icons.incomplete_circle,
            //         color: Colors.white,
            //         size: 40,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Icon(
            //         Icons.waterfall_chart,
            //         color: Colors.white,
            //         size: 40,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Icon(
            //         Icons.bubble_chart,
            //         color: Colors.white,
            //         size: 40,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Icon(
            //         Icons.donut_small,
            //         color: Colors.white,
            //         size: 40,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Icon(
            //         Icons.area_chart,
            //         color: Colors.white,
            //         size: 40,
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.storefront,
                    color: AppColors.purpleColor,
                    size: 18,
                  ),
                  title: BigText(
                    text: 'Buyer Order Transactions',
                    fontWeight: FontWeight.bold,
                    size: 18,
                    color: AppColors.purpleColor,
                  ),
                  trailing: Icon(
                    Icons.arrow_downward,
                    color: AppColors.purpleColor,
                    size: 18,
                  ),
                ),
              ],
            ),
            FutureBuilder(
              future: Provider.of<BuyertransVm>(context, listen: false)
                  .getBuyertrans(context),
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
                BuyertransResponse now = snapshot.data;
                return ListView.builder(
                    itemCount: now.buyer?.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      Buyer buyer = now.buyer![index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              //please change Dashboard to Register
                              builder: (context) => _bottomSheet(context),
                            ),
                          );
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.blueColor,
                                  blurRadius: 10,
                                  offset: Offset(0, 4))
                            ],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.13)),
                          ),
                          child: Material(
                            child: ListTile(
                              tileColor: Colors.white,
                              leading: Icon(
                                Icons.receipt,
                                color: AppColors.purpleColor,
                                size: 30,
                              ),
                              title: BigText(
                                  text:
                                      "Transaction_Id: ${buyer.transactionId}",
                                  fontWeight: FontWeight.bold),
                              subtitle: SmallText(
                                text: "Description:: ${buyer.description}",
                                fontWeight: FontWeight.bold,
                                color: AppColors.purpleColor,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.purpleColor,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              },
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 10,
              endIndent: 100,
              indent: 100,
              thickness: 2,
              color: AppColors.pinkColor,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 450,
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.purpleColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.pinkColor,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.bar_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.pie_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.incomplete_circle,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.waterfall_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.bubble_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.donut_small,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.area_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  _bottomSheet(context) {
    showModalBottomSheet(
      clipBehavior: Clip.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      context: context,
      builder: (BuildContext c) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black.withOpacity(0.13)),
                ),
                child: BigText(
                  text: 'Transaction Details',
                  fontWeight: FontWeight.bold,
                  color: AppColors.purpleColor,
                  size: 18,
                ),
              ),
              Divider(
                thickness: 4.07,
                color: Color(0xffd63384),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  BigText(
                      color: AppColors.pinkColor,
                      text: 'Quickly Scroll Down,',
                      size: 18,
                      fontWeight: FontWeight.bold),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  SmallText(
                      color: AppColors.pinkColor,
                      size: 12,
                      text: 'And click on recieved !',
                      fontWeight: FontWeight.normal)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black.withOpacity(0.13)),
                    ),
                    child: Material(
                      child: ListTile(
                        tileColor: Colors.white,
                        leading: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                        title: BigText(
                          text: "Transaction ID",
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                        subtitle: SmallText(
                          text: "jgukhijhkjijojkkkj",
                          fontWeight: FontWeight.bold,
                          color: AppColors.purpleColor,
                          size: 14,
                        ),
                        trailing: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 10,
                    endIndent: 100,
                    indent: 100,
                    thickness: 2,
                    color: AppColors.pinkColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black.withOpacity(0.13)),
                    ),
                    child: Material(
                      child: ListTile(
                        tileColor: Colors.white,
                        leading: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                        title: BigText(
                          text: "Description",
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                        subtitle: SmallText(
                          text: "jgukhijhkjijojkkkj",
                          fontWeight: FontWeight.bold,
                          color: AppColors.purpleColor,
                          size: 14,
                        ),
                        trailing: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 10,
                    endIndent: 100,
                    indent: 100,
                    thickness: 2,
                    color: AppColors.pinkColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black.withOpacity(0.13)),
                    ),
                    child: Material(
                      child: ListTile(
                        tileColor: Colors.white,
                        leading: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                        title: BigText(
                          text: "Duration in (Days)",
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                        subtitle: SmallText(
                          text: "jgukhijhkjijojkkkj",
                          fontWeight: FontWeight.bold,
                          color: AppColors.purpleColor,
                          size: 14,
                        ),
                        trailing: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 10,
                    endIndent: 100,
                    indent: 100,
                    thickness: 2,
                    color: AppColors.pinkColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black.withOpacity(0.13)),
                    ),
                    child: Material(
                      child: ListTile(
                        tileColor: Colors.white,
                        leading: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                        title: BigText(
                          text: "Quantity",
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                        subtitle: SmallText(
                          text: "jgukhijhkjijojkkkj",
                          fontWeight: FontWeight.bold,
                          color: AppColors.purpleColor,
                          size: 14,
                        ),
                        trailing: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 10,
                    endIndent: 100,
                    indent: 100,
                    thickness: 2,
                    color: AppColors.pinkColor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black.withOpacity(0.13)),
                    ),
                    child: BigText(
                      text: 'Payment Summary',
                      fontWeight: FontWeight.bold,
                      color: AppColors.purpleColor,
                      size: 18,
                    ),
                  ),
                  Divider(
                    thickness: 4.07,
                    color: Color(0xffd63384),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black.withOpacity(0.13)),
                    ),
                    child: Material(
                      child: ListTile(
                        tileColor: Colors.white,
                        leading: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                        title: BigText(
                          text: "Amount",
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                        subtitle: SmallText(
                          text: "jgukhijhkjijojkkkj",
                          fontWeight: FontWeight.bold,
                          color: AppColors.purpleColor,
                          size: 14,
                        ),
                        trailing: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 10,
                    endIndent: 100,
                    indent: 100,
                    thickness: 2,
                    color: AppColors.pinkColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black.withOpacity(0.13)),
                    ),
                    child: Material(
                      child: ListTile(
                        tileColor: Colors.white,
                        leading: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                        title: BigText(
                          text: "Charges(Non-Refundable 3% of every deposit)",
                          fontWeight: FontWeight.bold,
                          size: 16,
                        ),
                        subtitle: SmallText(
                          text: "jgukhijhkjijojkkkj",
                          fontWeight: FontWeight.bold,
                          color: AppColors.purpleColor,
                          size: 14,
                        ),
                        trailing: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 10,
                    endIndent: 100,
                    indent: 100,
                    thickness: 2,
                    color: AppColors.pinkColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black.withOpacity(0.13)),
                    ),
                    child: Material(
                      child: ListTile(
                        tileColor: Colors.white,
                        leading: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                        title: BigText(
                          text: "Total Amount",
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                        subtitle: SmallText(
                          text: "jgukhijhkjijojkkkj",
                          fontWeight: FontWeight.bold,
                          color: AppColors.purpleColor,
                          size: 14,
                        ),
                        trailing: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.purpleColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 10,
                    endIndent: 100,
                    indent: 100,
                    thickness: 2,
                    color: AppColors.pinkColor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: SizedBox(
                          width: 120,
                          height: 50,
                          // ignore: sort_child_properties_last
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Dashboard(),
                                ),
                              );
                            },
                            // ignore: sort_child_properties_last
                            child: BigText(
                              text: "RECEIVED",
                              fontWeight: FontWeight.bold,
                              size: 10,
                              color: Colors.white,
                            ),

                            style: ElevatedButton.styleFrom(
                              primary: AppColors
                                  .purpleColor, //change background color of button
                              // onPrimary: Colors.yellow, //change text color of button
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: AppColors.purpleColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        );
      },
    );
  }

  Container buildSlider(BuildContext context, String title, Color color) {
    return Container(
      width: 250,
      height: 150,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              color: AppColors.pinkColor, blurRadius: 10, offset: Offset(0, 4))
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              BigText(
                text: 'Transaction_Id::',
                fontWeight: FontWeight.bold,
                size: 16,
                color: AppColors.purpleColor,
              ),
              BigText(
                text: 'shdhuyhR134Y',
                fontWeight: FontWeight.bold,
                size: 14,
                color: AppColors.purpleColor,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              BigText(
                text: 'Description::',
                fontWeight: FontWeight.bold,
                size: 16,
                color: AppColors.purpleColor,
              ),
              BigText(
                text: '2 Iphone 14 256gig',
                fontWeight: FontWeight.bold,
                size: 14,
                color: AppColors.purpleColor,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              BigText(
                text: 'Status::',
                fontWeight: FontWeight.bold,
                size: 16,
                color: AppColors.purpleColor,
              ),
              BigText(
                text: 'Paid',
                fontWeight: FontWeight.bold,
                size: 14,
                color: AppColors.purpleColor,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              BigText(
                text: 'Date::',
                fontWeight: FontWeight.bold,
                size: 16,
                color: AppColors.purpleColor,
              ),
              BigText(
                text: '24-02-2023',
                fontWeight: FontWeight.bold,
                size: 14,
                color: AppColors.purpleColor,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 20),
            child: SizedBox(
              width: 100,
              height: 30,
              // ignore: sort_child_properties_last
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //please change Dashboard to Register
                      builder: (context) => Dashboard(),
                    ),
                  );
                },
                // ignore: sort_child_properties_last
                child: BigText(
                  text: "Received",
                  fontWeight: FontWeight.bold,
                  size: 12,
                  color: Colors.white,
                ),

                style: ElevatedButton.styleFrom(
                  primary:
                      AppColors.purpleColor, //change background color of button
                  // onPrimary: Colors.yellow, //change text color of button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

// FOR NUMBER FORMT
currencyFormatter(amount) {
  double parseAmount = double.parse(amount);
  var euroInUsFormat = NumberFormat.currency(locale: 'en_us', symbol: '\u20A6');
  var newAmount = euroInUsFormat.format(parseAmount);
  return newAmount;
}

Widget imageProfile(context) {
  return Center(
    child: Stack(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/avatar.png'),
        ),
        Positioned(
          bottom: 5.0,
          right: 3.0,
          child: InkWell(
            onTap: () {
              showBottomSheet(
                context: context,
                // ignore: avoid_types_as_parameter_names
                builder: ((Builder) => bottomsheet()),
              );
            },
            // ignore: prefer_const_constructors
            child: Icon(
              Icons.camera_alt,
              color: AppColors.blueColor,
              size: 15.0,
            ),
          ),
        ),
      ],
    ),
  );
}
