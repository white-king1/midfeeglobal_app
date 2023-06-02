// ignore_for_file: prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api, unused_field, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/utils/colors.dart';
import 'package:midfeeglobal_app/widgets/big_text.dart';

class ResponsiveCarousel extends StatefulWidget {
  const ResponsiveCarousel({Key? key}) : super(key: key);

  @override
  _ResponsiveCarouselState createState() => _ResponsiveCarouselState();
}

class _ResponsiveCarouselState extends State<ResponsiveCarousel> {
  final String imagePath = 'assets';
  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false];
  List _isSelected = [true, false, false, false, false];
  int _current = 0;

  final List<String> images = [
    'assets/GiG.png',
    'assets/guonew.png',
    'assets/abcnew.jpg',
    'assets/dhlnew.jpg',
    'assets/fedexnew.jpg'
  ];

  final List<String> company = [
    'GIG LOGISTICS',
    'GUO LOGISTICS',
    'ABC LOGISTICS',
    'DHL LOGISTICS',
    'FEDEX EXPRESS',
    
  ];

  List<Widget> generateImagesTiles() {
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        BigText(
          text: 'You Can Use these Logistics Company Below', 
          fontWeight: FontWeight.bold,
          color: AppColors.purpleColor,
          size: 16,
          ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 50),
          child: Stack(
            children: [
              CarouselSlider(
                  items: generateImagesTiles(),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 20 / 9,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                        for (int i = 0; i < images.length; i++) {
                          if (i == index) {
                            _isSelected[i] = true;
                          } else {
                            _isSelected[i] = false;
                          }
                        }
                      });
                    },
                  )),
              AspectRatio(
                aspectRatio: 18 / 8,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Center(
                      child: BigText(
                        text: company[_current], 
                        fontWeight: FontWeight.bold,
                        color: AppColors.pinkColor,
                        size: 18,
                        ),
                    )
                    // Center(
                    //   child: Text(
                    //     company[_current],
                    //     style: TextStyle(
                    //         decoration: TextDecoration.none,
                    //         color: AppColors.purpleColor,
                    //         fontSize: MediaQuery.of(context).size.width / 15),
                    //   ),
                    // ),
                  ],
                ),
              ),
              // Dot NAVIGATION
              AspectRatio(
                aspectRatio: 16 / 8,
                child: Center(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 50,
                        right: 50,
                      ),
                      child: Card(
                        elevation: 0,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 0,
                            bottom: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              for (int i = 0; i < company.length; i++)
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 5,
                                        bottom: 5,
                                      ),
                                      child: Container(
                                         height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.grey,
                                          ),
                                      ),
                                      // child: Text(
                                      //     // company[i]
                                      //     '....'),
                                    ),
                                    Visibility(
                                        visible: _isSelected[i],
                                        child: Container(
                                          height: 20,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: AppColors.purpleColor,
                                          ),
                                        ))
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
