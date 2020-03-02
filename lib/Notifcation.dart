import 'package:flutter/material.dart';




class MyAppTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Notifcation();
  }
}

class Notifcation extends State<MyAppTest> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Text("Notification Badge"),
        actions: <Widget>[
          // Using Stack to show Notification Badge
           Stack(
            children: <Widget>[
               IconButton(icon: Icon(Icons.notifications), onPressed: () {
                setState(() {
                  counter = 0;
                });
              }),
              counter != 0 ?  Positioned(
                right: 11,
                top: 11,
                child:  Container(
                  padding: EdgeInsets.all(2),
                  decoration:  BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: Text(
                    '$counter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ) :  Container()
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("Increment Counter");
        setState(() {
          counter++;
        });
      }, child: Icon(Icons.add),),
    ));
  }
}