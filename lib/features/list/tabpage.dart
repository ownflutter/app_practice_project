import 'package:app_practice_project/features/list/newpage_ostad.dart';
import 'package:flutter/material.dart';

import 'list_activeties.dart';

class TapBar extends StatelessWidget {
  const TapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue, 
            title: Text("Text"),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: "Home",),
                Tab(icon: Icon(Icons.search_rounded),text: "Home",),
                Tab(icon: Icon(Icons.settings),text: "Home",),
                Tab(icon: Icon(Icons.email),text: "Home",),
                Tab(icon: Icon(Icons.add),text: "Home",),
                Tab(icon: Icon(Icons.add),text: "Home",),
                Tab(icon: Icon(Icons.add),text: "Home",),
                Tab(icon: Icon(Icons.add),text: "Home",),

              ],
            ),
      ),
          body: Center(
            child: TabBarView(
              children: [
                Text("1"),
                Text("2"),
                Text("3"),
                Text("4"),
                Learning_page(),
                Text("6"),
                Text("7"),
                Text("8"),
              ],
            ),
          ),
    ));
  }
}
