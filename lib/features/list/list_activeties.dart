import 'package:app_practice_project/features/list/another_page.dart';
import 'package:app_practice_project/features/list/newpage_ostad.dart';
import 'package:app_practice_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Learning_page extends StatefulWidget {
  const Learning_page({super.key});

  @override
  State<Learning_page> createState() => _Learning_pageState();
}

class _Learning_pageState extends State<Learning_page> {
  MyshowSnacbar(massage, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(massage)));
  }

  final ButtonStyle buttonStyle =
      ElevatedButton.styleFrom(backgroundColor: Colors.amber);

  @override
  Widget build(BuildContext context) {
    List<int> city = [1, 58, 3, 35, 5, 8, 854, 6, 855];
    city.sort();
    //city.sort((a,b)=> b.compareTo(a));

    return Scaffold(
      appBar: AppBar(
        toolbarOpacity: 1,
        backgroundColor: OurAppColor.colorC,
        title: const Text(
          'List Page',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                MyshowSnacbar("I am Comment", context);
              },
              icon: Icon(Icons.comment, color: Colors.white)),
          IconButton(
              onPressed: () {
                MyshowSnacbar("I am Safe", context);
              },
              icon: Icon(Icons.safety_check, color: Colors.white)),
          IconButton(
              onPressed: () {
                MyshowSnacbar("I am Email", context);
              },
              icon: Icon(Icons.email, color: Colors.white)),
          IconButton(
              onPressed: () {
                MyshowSnacbar("I am Setting", context);
              },
              icon: Icon(Icons.settings, color: Colors.white)),
        ],
      ),
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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LinearProgressIndicator(),
                ElevatedButton(
                  onPressed: () {
                    myAlertDialog(context);
                  },
                  child: Text("Click Me"),
                  style: buttonStyle,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(()=> GridViewPage("Next Page here"));
                  },
                  child: Text("Next Page"),
                  style: buttonStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => ListPass(
                        map: city,
                      ));
                },
                child: Text("PASS List - from Dev ")),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        elevation: 10,
        onPressed: () {
          MyshowSnacbar("I am Add", context);
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.amber,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MyshowSnacbar("Home", context);
          }
          if (index == 1) {
            MyshowSnacbar("massage", context);
          }
          if (index == 2) {
            MyshowSnacbar("Person", context);
          }
        },
      ),
      endDrawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text('Gulshanara Anamika'),
                accountEmail: Text('anamika@gmail.com'),
                currentAccountPicture:
                    Icon(Icons.person, size: 50, color: Colors.white),
              )),
          ListTile(
              title: Text("Anamika's Home,Go Back"),
              leading: Icon(Icons.home),
              onTap: () {
                Get.back();
              }),
          ListTile(
            title: Text("Anamika's Contact"),
            leading: Icon(Icons.contact_emergency),
            onTap: () {
              MyshowSnacbar("Anamika's Contact", context);
            },
          ),
          ListTile(
            title: Text("Anamika's Profile"),
            leading: Icon(Icons.verified_user),
            onTap: () {
              MyshowSnacbar("Anamika's Profile", context);
            },
          ),
          ListTile(
            title: Text("Anamika's Phone"),
            leading: Icon(Icons.phone),
            onTap: () {
              MyshowSnacbar("Anamika's Phone", context);
            },
          ),
        ],
      )),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text('Gulshanara Anamika'),
                accountEmail: Text('anamika@gmail.com'),
                currentAccountPicture:
                    Icon(Icons.person, size: 50, color: Colors.white),
              )),
          ListTile(
              title: Text("Anamika's Home,Go Back"),
              leading: Icon(Icons.home),
              onTap: () {
                Get.back();
              }),
          ListTile(
            title: Text("Anamika's Contact"),
            leading: Icon(Icons.contact_emergency),
            onTap: () {
              MyshowSnacbar("Anamika's Contact", context);
            },
          ),
          ListTile(
            title: Text("Anamika's Profile"),
            leading: Icon(Icons.verified_user),
            onTap: () {
              MyshowSnacbar("Anamika's Profile", context);
            },
          ),
          ListTile(
            title: Text("Anamika's Phone"),
            leading: Icon(Icons.phone),
            onTap: () {
              MyshowSnacbar("Anamika's Phone", context);
            },
          ),
        ],
      )),
    );
  }

  buttonStyeee({required Color color, required Color tColor}) {
    return ElevatedButton.styleFrom(
        backgroundColor: color, foregroundColor: tColor);
  }

  myAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text("Save Me"),
            content: Text("Are you sure!"),
                actions: [
                  TextButton(
                    onPressed: () {Get.back();
                      MyshowSnacbar("Back successfully", context);
                      }, child: Text("Save"), style: buttonStyle),
                  TextButton(onPressed: () {}, child: Text("Cancel"), style: buttonStyle,
                  ),
                ],
          ));
        });
  }
}
