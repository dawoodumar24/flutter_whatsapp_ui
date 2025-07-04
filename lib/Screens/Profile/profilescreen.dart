import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_ui/Screens/Home/homescreen.dart';
import 'package:whatsapp_ui/Widgets/uiHelper.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var profile = TextEditingController();
  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            UiHelper.customText(
              text: "Profile Info",
              height: 24,
              fontweight: FontWeight.bold,
              color: Color(0XFF00A884),
            ),
            SizedBox(height: 50),
            UiHelper.customText(
              text: "Please provide your name and an optional",
              height: 15,
              color: Color(0XFF5E5E5E),
            ),
            SizedBox(height: 4),
            UiHelper.customText(
              text: "profile photo",
              height: 15,
              color: Color(0XFF5E5E5E),
            ),
            SizedBox(height: 40,),
            GestureDetector( onTap: (){_openButton(context);},
              child: pickedImage == null? CircleAvatar(
                radius: 80,
                backgroundColor: Color(0XFFD9D9D9),
                child: Image.asset("assets/images/camera1.png",height: 50, fit: BoxFit.cover,),
              ): CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickedImage!),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 300,
                child: TextField(
                  keyboardType: TextInputType.name,
                  controller: profile,
                  decoration: InputDecoration(
                       hintText: "Enter your name here",
                    hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF05AA82))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF05AA82),width: 1)),
                  ),
                ),),
                SizedBox(width: 10,),
                Image.asset("assets/images/happyface 1.png"),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>homeScreen()),);
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  _openButton(BuildContext context) {
    return showModalBottomSheet(context: context, builder: (BuildContext context) {
      return Container(
        width: 200,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){
                  _pickImage(ImageSource.camera);
                }, icon: Icon(Icons.camera_alt,size: 80,color: Colors.grey,)),
                IconButton(onPressed: (){
                  _pickImage(ImageSource.gallery);
                },icon: Icon(Icons.image,size: 80,color: Colors.grey,)),
              ],
            )
          ],
        ),
      );
    });
}
  _pickImage(ImageSource imagesource)async {
    try{
      final photo = await ImagePicker().pickImage(source: imagesource);
      if(photo == null) return;
      final tempImage = File(photo.path);
      setState((){
        pickedImage = tempImage;
      });
    }
    catch(ex) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.toString()),backgroundColor: Color(0XFF00A884),));
    }
  }
}





