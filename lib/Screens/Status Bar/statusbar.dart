import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/uiHelper.dart';

class StatusBar extends StatelessWidget {

  var StatusContent = [
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3lAsaRkY1bio7NHqRCtay8n-WZSMXHGBpcA&s",
      "name" : "Ali",
      "time" : "1hr ago"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qJBsnDGDzZykBOGUo5oZ8ZfaqunMmvkXtA&s",
      "name" : "Adeen",
      "time" : "1 day ago"
    },
    {
      "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-K2Qe5N26HdG0jQWBEHxZYETyuxdBDUfhzA&s",
      "name" : "Alveesha",
      "time" : "30minutes ago"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 20,),
              UiHelper.customText(text: "Status", height: 20),
            ],
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(
                children: [CircleAvatar(
                  radius: 27,
                   backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS92O4D7XPfwfQ0cDr18Ty7yt_KXpux0ZHJRg&s"),
                ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0XFF008069),
                      child: Icon(Icons.add,size: 15,color: Colors.white),
                    ),
                  ),
                ]
              ),
            ),
            title: UiHelper.customText(text: "My Status", height: 20),
            subtitle: UiHelper.customText(text: "Tap to add a status update", height: 15),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.customText(text: "Recent Updates", height: 15),
                Icon(Icons.arrow_drop_down, color: Color(0XFF5E5E5E),)
              ],
            ),

          ),
          SizedBox(height: 10,),
          Expanded(child: ListView.builder(itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(StatusContent[index]["img"].toString()),
              ),
              title: UiHelper.customText(text: StatusContent[index]["name"].toString(), height: 16,fontweight: FontWeight.w500),
              subtitle: UiHelper.customText(text: StatusContent[index]["time"].toString(), height: 14),

            );
          },itemCount: StatusContent.length,
          )
          ),]
      ),
    );
  }
}