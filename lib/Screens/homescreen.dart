import 'package:flutter/material.dart';
import 'package:whatsapp/Home/callsscreen.dart';
import 'package:whatsapp/Home/camerascreen.dart';
import 'package:whatsapp/Home/chatscreen.dart';
import 'package:whatsapp/Home/statusscreen.dart';
import 'package:whatsapp/Widegts/uihelper.dart';
class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "CHATS",),
            Tab(text: "STATUS"),
            Tab(text: "CALLS",)
          ],),
          toolbarHeight: 100,
          title: UiHelper.CustomText(text: "WhatsApp", height: 25,color: Colors.white,fontweight: FontWeight.bold),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(onPressed: (){}, icon:Icon(Icons.search) ),
            )
          ],
        ),
        body: TabBarView(children: [
          Camerascreen(),
            Chatscreen(),
          Statusscreen(),
          Callsscreen(),

        ]),
      ),
    );
  }
}
