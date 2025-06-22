import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/OTP/otpscreen.dart';
import 'package:whatsapp_ui/Widgets/uiHelper.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String selectedCountry = "Pakistan";

  List<String> countries = [
    "Pakistan",
    "Palestine",
    "India",
    "UK",
    "Germany",
    "America",
    "Bangladesh",
  ];

  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.customText(
              text: "Enter your phone number",
              height: 23,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            UiHelper.customText(
              text: "WhatsApp will need to verify your phone",
              height: 15,
              color: Color(0XFF5E5E5E),
            ),
            SizedBox(height: 4),
            UiHelper.customText(
              text: "number. Carrier charges may apply.",
              height: 15,
              color: Color(0XFF5E5E5E),
            ),
            SizedBox(height: 4),
            UiHelper.customText(
              text: " What’s my number?",
              height: 15,
              color: Color(0XFF00A884),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: DropdownButtonFormField(items: countries.map((String country){
                return DropdownMenuItem(child: Text(country.toString()),
                value: country,);
              }).toList(), onChanged: (value){
                setState(() {
                  selectedCountry = value!;
                });
              },
                value: selectedCountry,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  )
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "+92",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                ),),),
                SizedBox(width: 14,),
                SizedBox(width: 260,
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    )
                  ),
                ),)
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: () {
        login(phoneController.text.toString());
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }
  login(String Number) {
    if(Number == "") {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter the Phone number"),backgroundColor: Color(0XFF00A884),));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => otpScreen(phoneNumber: Number,)));
    }
  }

}
