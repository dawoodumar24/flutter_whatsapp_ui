import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/uiHelper.dart';

class ContactScreen extends StatelessWidget {

  var contactContent = [
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qJBsnDGDzZykBOGUo5oZ8ZfaqunMmvkXtA&s",
      "name" : "Usman Bhai",
      "time" : "own rules"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3lAsaRkY1bio7NHqRCtay8n-WZSMXHGBpcA&s",
      "name" : "Ali",
      "time" : "Alhamdulillah"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qJBsnDGDzZykBOGUo5oZ8ZfaqunMmvkXtA&s",
      "name" : "Usman Bhai",
      "time" : "own rules"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-K2Qe5N26HdG0jQWBEHxZYETyuxdBDUfhzA&s",
      "name" : "Abdullah Bhai",
      "time" : "Single boy"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3lAsaRkY1bio7NHqRCtay8n-WZSMXHGBpcA&s",
      "name" : "Ali",
      "time" : "cool"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qJBsnDGDzZykBOGUo5oZ8ZfaqunMmvkXtA&s",
      "name" : "Usman Bhai",
      "time" : "my life"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-K2Qe5N26HdG0jQWBEHxZYETyuxdBDUfhzA&s",
      "name" : "Abdullah Bhai",
      "time" : "Hey! there I am using whatsapp"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3lAsaRkY1bio7NHqRCtay8n-WZSMXHGBpcA&s",
      "name" : "Ali",
      "time" : "Alhamdulillah"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qJBsnDGDzZykBOGUo5oZ8ZfaqunMmvkXtA&s",
      "name" : "Usman Bhai",
      "time" : "own rules"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-K2Qe5N26HdG0jQWBEHxZYETyuxdBDUfhzA&s",
      "name" : "Abdullah Bhai",
      "time" : "Single boy"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3lAsaRkY1bio7NHqRCtay8n-WZSMXHGBpcA&s",
      "name" : "Ali",
      "time" : "cool"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qJBsnDGDzZykBOGUo5oZ8ZfaqunMmvkXtA&s",
      "name" : "Usman Bhai",
      "time" : "my life"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-K2Qe5N26HdG0jQWBEHxZYETyuxdBDUfhzA&s",
      "name" : "Abdullah Bhai",
      "time" : "Hey! there I am using whatsapp"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: UiHelper.customText(text: "Select Contacts", height: 18, color: Colors.white),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp))
      ],),
      body:
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(contactContent[index]["img"].toString()),
            ),
            title: UiHelper.customText(text: contactContent[index]["name"].toString(), height: 18,fontweight: FontWeight.w500),
            subtitle: UiHelper.customText(text: contactContent[index]["time"].toString(), height: 14),


          );
        },
        itemCount: contactContent.length,),
      )

    );
  }
}