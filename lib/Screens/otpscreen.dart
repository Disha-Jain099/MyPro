import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/profilescreen.dart';
import 'package:whatsapp/Widegts/uihelper.dart';
class Otpscreen extends StatelessWidget {
  String phonenumber;
   Otpscreen({super.key,required this.phonenumber});
   TextEditingController otp1controller=TextEditingController();
  TextEditingController otp2controller=TextEditingController();
  TextEditingController otp3controller=TextEditingController();
  TextEditingController otp4controller=TextEditingController();
  TextEditingController otp5controller=TextEditingController();
  TextEditingController otp6controller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80,),

            UiHelper.CustomText(text: "Verifying your number", height: 20,fontweight: FontWeight.bold,color: Color(0xFF00A884)),
            SizedBox(height: 30,),
            UiHelper.CustomText(text: "You've tried to register +91${phonenumber}", height: 16),
            UiHelper.CustomText(text: "Recently. Wait before requesting a sms or a call", height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "with your code", height: 16),
               GestureDetector(
                 onTap: (){
                   Navigator.pop(context);
                 },
                 child: UiHelper.CustomText(text: " Wrong number?", height: 16,color: Color(0xFF00A884)),
               )

              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainer(otp1controller),
                SizedBox(width: 10,),
                UiHelper.CustomContainer(otp2controller),
                SizedBox(width: 10,),
                UiHelper.CustomContainer(otp3controller),
                SizedBox(width: 10,),
                UiHelper.CustomContainer(otp4controller),
                SizedBox(width: 10,),
                UiHelper.CustomContainer(otp5controller),
                SizedBox(width: 10,),
                UiHelper.CustomContainer(otp6controller),

          ]
                ,
            ),
            SizedBox(height: 15,),
            UiHelper.CustomText(text: "Didn't receive code?", height: 15 ,color: Color(0XFF00A884))

          ],

        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=> Profilescreen()));

      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
