import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProfileController extends GetxController{
  RxString inputText = ''.obs;
 // TextEditingController textEditingController = TextEditingController();

  void updateText(String text) {
    inputText.value = text;
  }

}