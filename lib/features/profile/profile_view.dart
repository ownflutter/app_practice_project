import 'package:app_practice_project/features/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();


    return Scaffold(
        appBar: AppBar(
          backgroundColor: OurAppColor.colorC,
          title: const Text(
            'Profile Page',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white, // Set the drawer icon color to white
          ),
        ),
        body: Stack(
          children : [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("A"),
                Row(
                  children: [
                    Container(
                      width: 220,
                      child: TextField(
                        controller: textEditingController,
                      ),

                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.updateText(textEditingController.text);

                      },
                      child:Text("Show Text"),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Obx(() => Container(
                  height: 40,
                  color: OurAppColor.colorPrimary,
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(controller.inputText.isNotEmpty ? controller.inputText.value : 'No data' ,
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                  ),
                ))
              ],

            ),
          ),
            Positioned(
              bottom: 20,left: 20,right: 20,
              child: ElevatedButton(
                onPressed: () {},
                child:Text("ADD"),
              ),
            ),
          ]
        ));
  }
}
