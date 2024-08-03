import 'package:app_practice_project/features/dashboard/dashboard_controller.dart';
import 'package:app_practice_project/features/homepage/homepage_view.dart';
import 'package:app_practice_project/features/news/news_page_view.dart';
import 'package:app_practice_project/features/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Obx(() {
              return IndexedStack(
                index: controller.tabIndex.value,
                children: [
                  HomePage(),
                  NewsPage(),
                  ProfilePage(),
                ],
              );
            }),
          ),
          bottomNavigationBar: Obx(() {
            return BottomNavigationBar(
              unselectedItemColor: Colors.blue,
              selectedItemColor: Colors.black,
              onTap: controller.changeTabIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: controller.tabIndex.value,
              type: BottomNavigationBarType.fixed,
              items: [
                _bottomNavigationBarItem(icon: Icons.home, label: 'Home', text: 'Home'),
                _bottomNavigationBarItem(
                    icon: Icons.newspaper_sharp, label: 'News', text: 'News'),
                _bottomNavigationBarItem(
                    icon: Icons.person_rounded, label: 'Profile', text: 'Profile'),
              ],
            );
          }),
        );
      },
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      {required IconData icon, required String label,required String text}) {
    return BottomNavigationBarItem(
        icon: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            Text(text),
          ],
        ),
        label: label);
  }
}
