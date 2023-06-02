// ignore_for_file: unnecessary_import, library_private_types_in_public_api, prefer_const_constructors, avoid_print, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:midfeeglobal_app/utils/colors.dart';

class NewCarousel extends StatefulWidget {
  const NewCarousel({ Key? key }) : super(key: key);

  @override
  _NewCarouselState createState() => _NewCarouselState();
}

class _NewCarouselState extends State<NewCarousel> {
  List imageList = [
    {'id': 1, 'image_path': 'assets/GiG.png'},
    {'id': 2, 'image_path': 'assets/GUO.png'},
    {'id': 3, 'image_path': 'assets/abc.jpg'},
    {'id': 4, 'image_path': 'assets/Fedex.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          Container(
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    print(currentIndex);
                  },
                  child: CarouselSlider(
                    items:
                     imageList
                    .map(
                      (item) => Container(
                        height: 150,
                        width: double.infinity,
                        margin: EdgeInsets.all(5.0),
                        child: Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                        
                    ),
                      ))
                    .toList(),
                    carouselController: carouselController, 
                    options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 16/9,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                    )
                    ),
                ),
               Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                      print(entry);
                      print(entry.key);
                      return GestureDetector(
                        onTap: () => carouselController.animateToPage(entry.key),
                        child: Container(
                          width: currentIndex == entry.key ? 17 : 7,
                          height: 10.0,
                          margin: const EdgeInsets.symmetric(horizontal: 3.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key
                            ? AppColors.purpleColor
                            :Colors.black
                          ),
                        ),
                      );
                    }).toList(),
                  
                ),
                ), 
              ],
            ),
          )
        ],
      ),
    );
  }
}