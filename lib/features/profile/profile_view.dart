import 'package:app_practice_project/features/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                Text("A"),

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
