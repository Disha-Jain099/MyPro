import 'package:flutter/material.dart';
import 'package:whatsapp/Widegts/uihelper.dart';
class Chatscreen extends StatelessWidget {
  var arrContent=[
    {
      "images":"images/image.jpg",
      "name": "Amelia",
      "lastmsg": "Hey! Good Morning....",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":"images/image.jpg",
      "name": "Amelia",
      "lastmsg": "Hey! Good Morning....",
      "time": "05:45 am",
      "msg": "1",
    },
    {
      "images":"images/image.jpg",
      "name": "Amelia",
      "lastmsg": "Hey! Good Morning....",
      "time": "05:45 am",
      "msg": "5",
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 8,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: ListView.builder(itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(arrContent[index]["images"].toString()),


                  ),
                  title: UiHelper.CustomText(text: arrContent[index]["name"].toString(), height: 15,fontweight: FontWeight.w700),
                  subtitle: UiHelper.CustomText(text: arrContent[index]["lastmsg"].toString(), height: 13,color: Colors.grey),
                  trailing: Column(children: [
                    UiHelper.CustomText(text: arrContent[index]["time"].toString(), height: 12,color: Color(0XFF00A884)) ,
                    SizedBox(height: 8,),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFF036A01),
                      child: UiHelper.CustomText(text: arrContent[index]["msg"].toString(), height: 12,color: Colors.white) ,
                    )
                  ],)
                );

              },itemCount: arrContent.length,),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: const Color(0XFF00A884),
      child:

        Icon(Icons.message,color: Colors.white),
      )
    );
  }
}
