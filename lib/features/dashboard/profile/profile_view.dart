
import 'package:app_practice_project/features/dashboard/profile/profile_controller.dart';
import  'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Profile Page")),
      ),
    );
  }
}


