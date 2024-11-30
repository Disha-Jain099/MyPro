import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/otpscreen.dart';
import 'package:whatsapp/Widegts/uihelper.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController phoneController = TextEditingController();
  String _value ="India";
  //List<String>countries=["America","Africa","Italy","Germany"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
          Center(child:
          UiHelper.CustomText(text: "Enter Your Phone Number", height: 20,color: const Color(0xFF2E7D32),fontweight: FontWeight.bold)),
          SizedBox(height: 25,),
          UiHelper.CustomText(text: "WhatsApp will need to verify your phone", height: 16,color: Colors.black54),
          UiHelper.CustomText(text: "number. Carrier charges may apply", height: 16,color: Colors.black54),
          UiHelper.CustomText(text: " What's my number?", height: 16,color: Color(0xFF2E7D32)),
          SizedBox(height: 50,),



       Padding(
         padding: EdgeInsets.only(left: 50,right: 50) ,
         child: DropdownButton<String>(
           elevation: 10,
           iconEnabledColor: Colors.green,
           focusColor: Colors.green,

           isExpanded: true,
           borderRadius: BorderRadius.circular(10),
           value: _value,
           items: [
          DropdownMenuItem(
            value: 'India',
            child: Text('India'),
          ),
          DropdownMenuItem(
            value: 'USA',
            child: Text('USA'),
          ),
          DropdownMenuItem(
            value: 'Italy',
            child: Text('Italy'),
          ),
          DropdownMenuItem(
            value: 'Canada',
            child: Text('Canada'),
          ),
          DropdownMenuItem(
            value: 'Germany',
            child: Text('Germany'),
          ),
               ],
               onChanged: (value) {
          setState(() {
            _value = value!;
          });
               },
             ),
       ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: Row(

              children: [
                SizedBox(width: 50,child:
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "+91",
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF2E7D32)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF2E7D32))
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF2E7D32))
                          )
                        ),
                      ),

                  ),
                SizedBox(width: 10,),

                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2E7D32))
                      )
                    ),

                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){
        login(phoneController.text.toString());
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
  }
  login (String phonenumber){
    if(phonenumber==""){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter Phone number"),backgroundColor: Color(0xFF2E7D32),));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (_)=>Otpscreen(phonenumber:phonenumber ,)));
    }
  }
}
