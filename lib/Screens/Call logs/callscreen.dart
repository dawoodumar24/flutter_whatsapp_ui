import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/uiHelper.dart';

class CallScreen extends StatelessWidget {

  var callContent = [
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3lAsaRkY1bio7NHqRCtay8n-WZSMXHGBpcA&s",
      "name" : "Ali",
      "time" : "1hr ago"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qJBsnDGDzZykBOGUo5oZ8ZfaqunMmvkXtA&s",
      "name" : "Usman Bhai",
      "time" : "29 minutes day ago"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-K2Qe5N26HdG0jQWBEHxZYETyuxdBDUfhzA&s",
      "name" : "Abdullah Bhai",
      "time" : "14seconds ago"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3lAsaRkY1bio7NHqRCtay8n-WZSMXHGBpcA&s",
      "name" : "Ali",
      "time" : "1hr ago"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qJBsnDGDzZykBOGUo5oZ8ZfaqunMmvkXtA&s",
      "name" : "Usman Bhai",
      "time" : "29 minutes day ago"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-K2Qe5N26HdG0jQWBEHxZYETyuxdBDUfhzA&s",
      "name" : "Abdullah Bhai",
      "time" : "14seconds ago"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              UiHelper.customText(text: "Recents", height:17)
            ],
          ),
          SizedBox(height: 14,),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,backgroundImage: NetworkImage(callContent[index]["img"].toString()),
                ),
                title: UiHelper.customText(text: callContent[index]["name"].toString(), height: 20, fontweight: FontWeight.w500),
                subtitle: UiHelper.customText(text: callContent[index]["time"].toString(), height: 15),
                trailing: IconButton(onPressed: (){} ,icon: Icon(Icons.call,color: Color(0XFF00A884),)),
              );
            },itemCount: callContent.length,),
          )
        ],
      ),
    );
  }
}