import 'package:app_practice_project/features/list/another_page.dart';
import 'package:app_practice_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Learning_page extends StatefulWidget {
   Learning_page({super.key});
  String a = "a";

  @override
  State<Learning_page> createState() => _Learning_pageState();
}

class _Learning_pageState extends State<Learning_page> {
  @override
  Widget build(BuildContext context) {
    List<int> city = [1, 58, 3, 35, 5, 8, 854, 6, 855];
    city.sort();
    //city.sort((a,b)=> b.compareTo(a));

    return Scaffold(
      appBar: AppBar(
          backgroundColor: OurAppColor.colorC,
          title: const Text(
            'List Learning Page One',
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: city.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                      onPressed: () {}, child: Text(city[index].toString()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => ListPass(map: city,));
                },
                child: Text("PASS list ")),
          )
        ],
      ),
    );
  }
}
