import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/uiHelper.dart';

class otpScreen extends StatelessWidget {
  String phoneNumber;
  otpScreen({required this.phoneNumber});

  var otp1Controller = TextEditingController();
  var otp2Controller = TextEditingController();
  var otp3Controller = TextEditingController();
  var otp4Controller = TextEditingController();
  var otp5Controller = TextEditingController();
  var otp6Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              children: [
              SizedBox(height: 80),
          UiHelper.customText(
            text: "Verifying your number",
            height: 23,
            color: Color(0XFF00A884),
            fontweight: FontWeight.bold,
          ),
          SizedBox(height: 30),
          UiHelper.customText(
            text: "You’ve tried to register +92${phoneNumber}",
            height: 15,
            color: Color(0XFF5E5E5E),
          ),
          SizedBox(height: 4),
          UiHelper.customText(
            text: "recently. Wait before requesting an sms or a call.",
            height: 15,
            color: Color(0XFF5E5E5E),
          ),
          SizedBox(height: 4,),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            UiHelper.customText(text: " with your code. ", height: 15, color: Color(0XFF5E5E5E),),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child:
            UiHelper.customText(
              text: "Wrong number?",
              height: 15,
              color: Color(0XFF00A884),
            ),),
          ],),
                SizedBox(height: 20,),
                Container(width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UiHelper.customContainer(otp1Controller),
                      UiHelper.customContainer(otp2Controller),
                      UiHelper.customContainer(otp3Controller),
                      UiHelper.customContainer(otp4Controller),
                      UiHelper.customContainer(otp5Controller),
                      UiHelper.customContainer(otp6Controller),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                UiHelper.customText(text: "Didn’t receive code?", height: 16, color: Color(0XFF00A884)),

          ],
          ),
        ),
      floatingActionButton: UiHelper.CustomButton(callback: (){}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
