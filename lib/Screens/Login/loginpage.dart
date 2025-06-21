import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/uiHelper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
              text: "Enter your phone number",
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold
            ),
            SizedBox(height: 30,),
            UiHelper.customText(
              text: "WhatsApp will need to verify your phone",
              height: 14,
              color: Color(0XFF5E5E5E),
            ),
            SizedBox(height: 4,),
            UiHelper.customText(
              text: "number. Carrier charges may apply.",
              height: 14,
              color: Color(0XFF5E5E5E),
            ),
            SizedBox(height: 4,),
            UiHelper.customText(
              text: " What’s my number?",
              height: 14,
              color: Color(0XFF00A884),
            ),
          ],
        ),
      ),
    );
  }
}
