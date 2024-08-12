import 'package:app_practice_project/features/list/tabpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridViewPage extends StatelessWidget {
  String msg;
  GridViewPage(this.msg,{super.key});
  var image = [
    {"img": 'https://avatars.githubusercontent.com/u/135857612?v=4', 'title': ' Anamika'},
    {"img": 'https://media.licdn.com/dms/image/D5635AQHHKmj1O9p4zA/profile-framedphoto-shrink_400_400/0/1719437249602?e=1724068800&v=beta&t=9MsIsM6XzE-oShnNjOY-WTSqLM1TBRpwoNbZ0OkscK4', 'title': ' Sunny'},
    {"img": 'https://media.licdn.com/dms/image/D5635AQHHKmj1O9p4zA/profile-framedphoto-shrink_400_400/0/1719437249602?e=1724068800&v=beta&t=9MsIsM6XzE-oShnNjOY-WTSqLM1TBRpwoNbZ0OkscK4', 'title': ' Sunny'},
    {"img": 'https://avatars.githubusercontent.com/u/135857612?v=4', 'title': ' Anamika'},
    {"img": 'https://avatars.githubusercontent.com/u/135857612?v=4', 'title': ' Anamika'},
    {"img": 'https://avatars.githubusercontent.com/u/135857612?v=4', 'title': ' Anamika'},
    {"img": 'https://avatars.githubusercontent.com/u/135857612?v=4', 'title': ' Anamika'},
    {"img": 'https://avatars.githubusercontent.com/u/135857612?v=4', 'title': ' Anamika'},
    {"img": 'https://media.licdn.com/dms/image/D5635AQHHKmj1O9p4zA/profile-framedphoto-shrink_400_400/0/1719437249602?e=1724068800&v=beta&t=9MsIsM6XzE-oShnNjOY-WTSqLM1TBRpwoNbZ0OkscK4', 'title': ' Sunny'},
    {"img": 'https://media.licdn.com/dms/image/D5635AQHHKmj1O9p4zA/profile-framedphoto-shrink_400_400/0/1719437249602?e=1724068800&v=beta&t=9MsIsM6XzE-oShnNjOY-WTSqLM1TBRpwoNbZ0OkscK4', 'title': ' Sunny'},
    {"img": 'https://media.licdn.com/dms/image/D5635AQHHKmj1O9p4zA/profile-framedphoto-shrink_400_400/0/1719437249602?e=1724068800&v=beta&t=9MsIsM6XzE-oShnNjOY-WTSqLM1TBRpwoNbZ0OkscK4', 'title': ' Sunny'},
    {"img": 'https://media.licdn.com/dms/image/D5635AQHHKmj1O9p4zA/profile-framedphoto-shrink_400_400/0/1719437249602?e=1724068800&v=beta&t=9MsIsM6XzE-oShnNjOY-WTSqLM1TBRpwoNbZ0OkscK4', 'title': ' Sunny'},
    {"img": 'https://media.licdn.com/dms/image/D5635AQHHKmj1O9p4zA/profile-framedphoto-shrink_400_400/0/1719437249602?e=1724068800&v=beta&t=9MsIsM6XzE-oShnNjOY-WTSqLM1TBRpwoNbZ0OkscK4', 'title': ' Sunny'},
  ];
  myshowSnacbar(massage, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(massage)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid View, $msg"),
          backgroundColor: Colors.blue,
          actions: [
            GestureDetector(
                onTap: (){
                  Get.to(()=> TapBar());
                },
                child: Icon(Icons.play_arrow))
          ],
        ),
        body: GridView.builder(
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 1,
              childAspectRatio: 1
            ) ,
            itemCount: image.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                //onTap: (){myshowSnacbar(image[index]['title'],context);},
               // onDoubleTap: (){myshowSnacbar(image[index]['title'],context);},
                onLongPress: (){myAlertDialog(image[index]['title'],context);},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                      width: 50,
                      child: Image.network(image[index]['img']!,fit: BoxFit.fill,)),
                ),
              );

            },
            )

    );

  }
  myAlertDialog(text, context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
                title: Text(text),
                content: Text("Are you sure!"),
                actions: [
                  TextButton(
                      onPressed: () {Get.back();
                      myshowSnacbar("Back successfully", context);
                      }, child: Text("Save"),),
                  TextButton(onPressed: () {}, child: Text("Cancel"),
                  ),
                ],
              ));
        });
  }
}
