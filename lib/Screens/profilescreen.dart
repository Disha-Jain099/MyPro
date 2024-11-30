import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/Screens/homescreen.dart';
import 'package:whatsapp/Widegts/uihelper.dart';


class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  TextEditingController namecontroller=TextEditingController();

  File? pickedimage;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80,),
            UiHelper.CustomText(text: "Profile Info", height: 20,color: Color(0XFF00A884),fontweight: FontWeight.bold),
            SizedBox(height: 15,),
            UiHelper.CustomText(text: "Please provide your name and an optional", height: 16),
            UiHelper.CustomText(text: "profile photo", height: 16),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){

                _openBottom(context);
              },
              child:pickedimage==null? CircleAvatar(
                radius: 80,
                backgroundColor: Color(0XFFD9D9D9),
                child: Icon(Icons.camera_alt_rounded,color: Colors.grey,size: 40,),
              ):CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickedimage!),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: namecontroller,
                    decoration: InputDecoration(
                      hintText: "Type your name here.....",
                      hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF05AA82))
                      )

                    ),
                  ),
                ),
                Icon(Icons.emoji_emotions_outlined,color: Colors.grey,)
              ],
            )

          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=> Homescreen()));
      }, buttonname: "Next"),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }

  _openBottom(BuildContext context){
    return showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        height: 200,
        width : 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){
                  _pickImage(ImageSource.camera);
                }, icon: Icon(Icons.camera_alt,size: 80,color: Colors.grey),),
                IconButton(onPressed: (){
                  _pickImage(ImageSource.gallery);
                }, icon: Icon(Icons.image,size: 80,color: Colors.grey,))

              ],
            )
          ],
        ),
      );
    });
  }

  _pickImage(ImageSource source)async{
    try{
      final photo = await ImagePicker().pickImage(source: source);
      if(photo==null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedimage = tempimage;
      });
    }catch(e){
       return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString()),backgroundColor: Color(0XFF00A884)));
    }
  }
}
