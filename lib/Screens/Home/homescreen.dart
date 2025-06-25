import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Call%20logs/callscreen.dart';
import 'package:whatsapp_ui/Screens/Chats/chatscreen.dart';
import 'package:whatsapp_ui/Screens/Home/Camera/camerascreen.dart';
import 'package:whatsapp_ui/Screens/Status%20Bar/statusbar.dart';
import 'package:whatsapp_ui/Widgets/uiHelper.dart';

class homeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "Chats",),
            Tab(text: "Status",),
            Tab(text: "Call logs",)
          ],indicatorColor: Colors.white,
          ),
          toolbarHeight: 70,
          title: UiHelper.customText(text: "Whatsapp", height: 21, color: Color(0XFFFFFFFF),fontweight: FontWeight.bold),
          actions: [
               IconButton(onPressed: (){}, icon: Image.asset("assets/images/Search.png")),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp)
            ),
          ],
        ),
        body:TabBarView(children: [
          CameraScreen(),
          ChatScreen(),
          StatusBar(),
          CallScreen()
        ]),
      ),
    );
  }
}