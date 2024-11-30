import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/loginscreen.dart';
import 'package:whatsapp/Widegts/uihelper.dart';
class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/image 1.png"),
            SizedBox(height: 20,),
            UiHelper.CustomText(text: "Welcome to WhatsApp", height: 23,color: Colors.black),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read Out", height: 15),
                UiHelper.CustomText(text: " Privacy Policy. ", height: 15,color: Colors.blue ),
                UiHelper.CustomText(text: " Tap  ''Agree and continue''", height: 15),

              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "to accept the", height: 15),

                UiHelper.CustomText(text: "Teams of Service", height: 15,color: Colors.blue)
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=> Loginscreen()));
      }, buttonname: "Agree and Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
