// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:midfeeglobal_app/utils/colors.dart';

// class Carousel extends StatelessWidget {
// const Carousel({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context){
//     return ListView(
//       children: <Widget>[
//         SizedBox(height: 15.0),

//           CarouselSlider(
//             height: 180.0,
//             enlargeCenterPage: true,
//             autoPlay: true,
//             aspectRatio: 16/9,
//             autoPlayCurve: Curves.fastOutSlowIn,
//             enableInfiniteScroll: true,
//             autoPlayAnimationDuration: Duration(milliseconds: 800),
//             viewportFraction: 0.8,
//             items: [
//               Container(
//                 margin: EdgeInsets.all(5.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   image: DecorationImage(
//                     image: AssetImage('assets/GiG.png'),
//                     fit: BoxFit.cover,
//                     )
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                           Text(
//                             'Nice Logistics',
//                              style: TextStyle(
//                               color: AppColors.purpleColor,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18.0,
//                              ),
//                           ),

//                           Padding(
//                             padding: const EdgeInsets.all(15.0),
//                             child: Text(
//                               'Nice Delivery',
//                                style: TextStyle(
//                                 color: AppColors.purpleColor,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18.0,
//                                ),
//                                textAlign: TextAlign.center,
//                             ),
//                           )
//                   ],
//                 ),
//               ),

//               Container(
//                 margin: EdgeInsets.all(5.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   image: DecorationImage(
//                     image: AssetImage('assets/GUO.png'),
//                     fit: BoxFit.cover,
//                     )
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                           Text(
//                             'Nice Logistics',
//                              style: TextStyle(
//                               color: AppColors.purpleColor,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18.0,
//                              ),
//                           ),

//                           Padding(
//                             padding: const EdgeInsets.all(15.0),
//                             child: Text(
//                               'Nice Delivery',
//                                style: TextStyle(
//                                 color: AppColors.purpleColor,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18.0,
//                                ),
//                                textAlign: TextAlign.center,
//                             ),
//                           )
//                   ],
//                 ),
//               ),

//               Container(
//                 margin: EdgeInsets.all(5.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   image: DecorationImage(
//                     image: AssetImage('assets/abc.png'),
//                     fit: BoxFit.cover,
//                     )
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                           Text(
//                             'Nice Logistics',
//                              style: TextStyle(
//                               color: AppColors.purpleColor,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18.0,
//                              ),
//                           ),

//                           Padding(
//                             padding: const EdgeInsets.all(15.0),
//                             child: Text(
//                               'Nice Delivery',
//                                style: TextStyle(
//                                 color: AppColors.purpleColor,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18.0,
//                                ),
//                                textAlign: TextAlign.center,
//                             ),
//                           )
//                   ],
//                 ),
//               ),

//               Container(
//                 margin: EdgeInsets.all(5.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   image: DecorationImage(
//                     image: AssetImage('assets/Fedex.png'),
//                     fit: BoxFit.cover,
//                     )
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                           Text(
//                             'Nice Logistics',
//                              style: TextStyle(
//                               color: AppColors.purpleColor,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18.0,
//                              ),
//                           ),

//                           Padding(
//                             padding: const EdgeInsets.all(15.0),
//                             child: Text(
//                               'Nice Delivery',
//                                style: TextStyle(
//                                 color: AppColors.purpleColor,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18.0,
//                                ),
//                                textAlign: TextAlign.center,
//                             ),
//                           )
//                   ],
//                 ),
//               ),
//             ]
//             )
//       ],
//     );
//   }
// }