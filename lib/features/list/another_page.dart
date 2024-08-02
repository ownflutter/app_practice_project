import 'dart:developer';
import 'package:app_practice_project/utils/colors.dart';
import 'package:flutter/material.dart';

class ListPass extends StatefulWidget {
  final List<int> map;
  ListPass({required this.map, super.key});

  @override
  State<ListPass> createState() => _ListPassState();
}

class _ListPassState extends State<ListPass> {
  @override
  Widget build(BuildContext context) {
    List<int> useList = widget.map.toList();
    useList.sort((a, b) => b.compareTo(a));

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: OurAppColor.colorC,
          title: const Text(
            'List Learning_page 1',
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        children: [
          Container(
            color: Colors.black26,
            height: 400,
            child: ListView.builder(
              itemCount: useList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(useList[index].toString()),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                log("${useList.length}");
              },
              child: const Text('Add Value'),
            ),
          ),
        ],
      ),
    );
  }
}
