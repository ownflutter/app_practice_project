import 'package:app_practice_project/features/dashboard/dashboard_view.dart';
import 'package:app_practice_project/features/homepage/homepage_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RightDrawer extends StatefulWidget {
  final String text;
  const RightDrawer({super.key, required this.text});

  @override
  State<RightDrawer> createState() => _RightDrawerState();
}

class _RightDrawerState extends State<RightDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 150,
        child: Drawer(
            backgroundColor: Colors.white.withOpacity(0.5),
            child: Container(
              height: 100,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      widget.text,
                      style: TextStyle(color: Colors.black,fontSize: 16),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Get.to(() => HomePage());
                        },
                        child: Text("HomePage")),
                    ElevatedButton(
                        onPressed: () {
                          Get.to(() => Dashboard());
                        },
                        child: Text("Dashboard")),
                  ],
                ),
              ),
            )));
  }
}
