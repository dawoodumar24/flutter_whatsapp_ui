import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Home/ContactScreen/contactscreen.dart';
import 'package:whatsapp_ui/Widgets/uiHelper.dart';

class ChatScreen extends StatelessWidget {

  var arrContent = [
    {
      "images" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk7aiIqYwSNR3FlHmFviH8GoEY9atQsYPviw&s",
      "name" : "Dawood",
      "lastmsg" : "Bhai kaisa ha",
      "time" : "07:44 am",
      "msgs" : "2"
    },
    {
      "images" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qJBsnDGDzZykBOGUo5oZ8ZfaqunMmvkXtA&s",
      "name" : "Usman",
      "lastmsg" : "Yar bahir a tere se milna ha",
      "time" : "02:44 pm",
      "msgs" : "3"
    },
    {
      "images" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-K2Qe5N26HdG0jQWBEHxZYETyuxdBDUfhzA&s",
      "name" : "Abdullah",
      "lastmsg" : "Bhai mein ne to paise ni send kiye",
      "time" : "04:28 pm",
      "msgs" : "1"
    },
    {
      "images" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFphhoLs8JsIvWVih9BQHqbVp3v-xd_eyPAw&s",
      "name" : "Shahzaib",
      "lastmsg" : "Bhai aaj SE walo ne ana ha, tu bhi aja",
      "time" : "10:18 pm",
      "msgs" : "2"
    },
    {
      "images" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk7aiIqYwSNR3FlHmFviH8GoEY9atQsYPviw&s",
      "name" : "Dawood",
      "lastmsg" : "Bhai kaisa ha",
      "time" : "07:44 am",
      "msgs" : "2"
    },
    {
      "images" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qJBsnDGDzZykBOGUo5oZ8ZfaqunMmvkXtA&s",
      "name" : "Usman",
      "lastmsg" : "Yar bahir a tere se milna ha",
      "time" : "02:44 pm",
      "msgs" : "3"
    },
    {
      "images" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-K2Qe5N26HdG0jQWBEHxZYETyuxdBDUfhzA&s",
      "name" : "Abdullah",
      "lastmsg" : "Bhai mein ne to paise ni send kiye",
      "time" : "04:28 pm",
      "msgs" : "1"
    },
    {
      "images" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFphhoLs8JsIvWVih9BQHqbVp3v-xd_eyPAw&s",
      "name" : "Shahzaib",
      "lastmsg" : "Bhai aaj SE walo ne ana ha, tu bhi aja",
      "time" : "10:18 pm",
      "msgs" : "2"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(arrContent[index]["images"].toString()),
              ),
              title: UiHelper.customText(text: arrContent[index]["name"].toString(), height: 14, fontweight: FontWeight.w500),
              subtitle: UiHelper.customText(text: arrContent[index]["lastmsg"].toString(), height: 13, color: Color(0XFF889095)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.customText(text: arrContent[index]["time"].toString(), height: 13, color: Color(0XFF026500)),
                  SizedBox(height: 3,),
                  CircleAvatar(
                    backgroundColor: Color(0XFF2E6F40),
                    radius: 10,
                    child: UiHelper.customText(text: arrContent[index]["msgs"].toString(), height: 11,color: Colors.white),
                  )
                ],
              ),

            );
          },
          itemCount: arrContent.length,
          )),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactScreen()));
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0XFF008665),
          child: Image.asset("assets/images/commentbox.png"),
        ),
      ),
    );
  }
}