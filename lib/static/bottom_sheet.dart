// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, unused_field, prefer_const_constructors, unnecessary_new, deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:midfeeglobal_app/utils/colors.dart';


class bottomsheet extends StatefulWidget {
  bottomsheet({Key? key}) : super(key: key);

  @override
  State<bottomsheet> createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {
  late PickedFile _imagefile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Container(
  height: 150.0,
  width: MediaQuery.of(context).size.width,
  margin: EdgeInsets.symmetric(
    horizontal: 5,
    vertical: 5,
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: AppColors.purpleColor,
  ),
  
  child: Column(
    // ignore: prefer_const_literals_to_create_immutables
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.end,
             children: [
               GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.cancel_outlined,color: Colors.white),
                  ),
             ],
           ),
          SizedBox(height: 10,),
          Center(
            child: Text('choose a profile photo',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: (){
            takePhoto(ImageSource.camera);
            }, 
            icon: Icon(Icons.camera_alt,color:AppColors.purpleColor,), 
            label: Text('Camera',style: TextStyle(color:AppColors.purpleColor),),
            style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                    ),
            ),
    SizedBox(width: 20,),
            ElevatedButton.icon(
            onPressed: (){
              takePhoto(ImageSource.gallery);
            }, 
            icon: Icon(Icons.image,color: AppColors.purpleColor,), 
            label: Text('Gallery',style: TextStyle(color:AppColors.purpleColor),),
            style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                    ),
            ),
        ],
      )
    ],
  ),
);
  }
   void takePhoto(ImageSource source)async{
    // ignore: unused_local_variable
    final PickedFile = await _picker.getImage(
      source: source,
      );
      setState(() {
        _imagefile = PickedFile!;
      });
  }
}