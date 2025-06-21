import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Login/loginpage.dart';
import 'package:whatsapp_ui/Widgets/uiHelper.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(padding: EdgeInsets.only(bottom: 60),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image_1.png"),
            SizedBox(height: 60),
            UiHelper.customText(
              text: "Welcome to WhatsApp",
              height: 24,
              color: Color(0XFF000000),
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(
                  text: "Read out",
                  height: 15,
                  color: Color(0XFF5E5E5E),
                ),
                UiHelper.customText(
                  text: " Privacy Policy. ",
                  height: 15,
                  color: Color(0XFF0C42CC),
                ),
                UiHelper.customText(
                  text: "Tap “Agree and continue”",
                  height: 15,
                  color: Color(0XFF5E5E5E),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(
                  text: "to accept the",
                  height: 15,
                  color: Color(0XFF5E5E5E),
                ),
                UiHelper.customText(
                  text: "Terms of Services.",
                  height: 15,
                  color: Color(0XFF0C42CC),
                ),
              ],
            ),
          ],
        ),),
      ),
      floatingActionButton:
      UiHelper.CustomButton(
          callback: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          }, buttonname: "Agree and Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
