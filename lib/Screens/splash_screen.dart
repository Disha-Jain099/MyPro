import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/onboardingscreen.dart';
import 'package:whatsapp/Widegts/uihelper.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Onboardingscreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

           children: [
             Image.asset("images/whstapp.png",width: 100,height: 100,),SizedBox(height: 20,),
             UiHelper.CustomText(text: "WhatsApp", height: 20,fontweight: FontWeight.bold)
           ],
         ),
       ),
    );
  }
}
