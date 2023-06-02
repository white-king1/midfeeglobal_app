// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_new

// import 'package:flutter/material.dart';
// import 'package:midfeeglobal_app/utils/colors.dart';
// import 'package:midfeeglobal_app/widgets/big_text.dart';
// import 'package:midfeeglobal_app/widgets/small_text.dart';

// class Body extends StatelessWidget {
//   const Body({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           SizedBox(
//             height: 500,
//             decortion
//             child: Stack(
//               children: [
//                 Container(
//                   height: 500,
//                   width: 400,
//                   margin: EdgeInsets.only(top: size.height + 0.3),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(30),
//                         topRight: Radius.circular(30),
//                       )),
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 20,
//                       ),
//                       BigText(
//                         text: 'TRANSACTION ID:: jkjojisfjijsjijdksjmk',
//                         color: AppColors.purpleColor,
//                         size: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Divider(
//                         height: 10,
//                         endIndent: 100,
//                         indent: 100,
//                         thickness: 2,
//                         color: AppColors.pinkColor,
//                       ),
//                       BigText(
//                         text: 'DESCRIPTION:: jkjojisfjijsjijdksjmk',
//                         color: AppColors.purpleColor,
//                         size: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Divider(
//                         height: 10,
//                         endIndent: 100,
//                         indent: 100,
//                         thickness: 2,
//                         color: AppColors.pinkColor,
//                       ),
//                       BigText(
//                         text: 'PERIOD IN (DAYS):: jkjojisfjijsjijdksjmk',
//                         color: AppColors.purpleColor,
//                         size: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Divider(
//                         height: 10,
//                         endIndent: 100,
//                         indent: 100,
//                         thickness: 2,
//                         color: AppColors.pinkColor,
//                       ),
//                       BigText(
//                         text: 'QUANTITY:: jkjojisfjijsjijdksjmk',
//                         color: AppColors.purpleColor,
//                         size: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Divider(
//                         height: 10,
//                         endIndent: 100,
//                         indent: 100,
//                         thickness: 2,
//                         color: AppColors.pinkColor,
//                       ),
//                       BigText(
//                         text: 'DEPOSIT AMOUNT:: jkjojisfjijsjijdksjmk',
//                         color: AppColors.purpleColor,
//                         size: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Divider(
//                         height: 10,
//                         endIndent: 100,
//                         indent: 100,
//                         thickness: 2,
//                         color: AppColors.pinkColor,
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 8.0),
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               width: 30,
//                             ),
//                             Expanded(
//                               child: SizedBox(
//                                 height: 50,
//                                 child: ElevatedButton(
//                                   onPressed: () => {},
//                                   child: BigText(
//                                       text: 'RECEIVED',
//                                       size: 14,
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold),
//                                   style: ElevatedButton.styleFrom(
//                                     primary: AppColors.purpleColor,
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius:
//                                             new BorderRadius.circular(20.0)),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
                
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
