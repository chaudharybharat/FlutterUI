import 'package:flutter/material.dart';
import 'package:flutter_api_calls/SecondScreen.dart';
import 'package:flutter_api_calls/comman/string.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'Home.dart';
import 'Notifcation.dart';
import 'comman/CommanKey.dart';
import 'comman/style.dart';


//void main() => runApp(MyAppTest());

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  home:new Home(),
  routes:<String,WidgetBuilder>{
    HOMEPAGE: (BuildContext context) =>  new SecondScreen(),
    //ADDTODOPAGE: (BuildContext context) =>  new AddTodoPage(),
  },
));

class MyAppTest extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Title"),
        ),
        body: new Center(child: new Text("Click Me")),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          backgroundColor: Colors.orange,
          onPressed: () {
            print("Clicked");
            Navigator.of(context).pushNamed(HOMEPAGE);
          },
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Api Call'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List data;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});

    setState(() {
      data = json.decode(response.body);
    });
    return "Success";
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Api Example"),
      ),
      body: Center(
        child: getList(),
      ),
    );
  }

  Widget getList() {
    if (data == null || data.length < 1) {
      return Container(
        child: Center(
         // child: Text("Please wait..."),
          child: SizedBox(
              height: 55.0,
              width: 55.0,
              child:
              CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  strokeWidth: 3.0)
          ),
        ),
      );
    }
    return ListView.separated(
      itemCount: data?.length,
      itemBuilder: (BuildContext context, int index) {
        return getListItem(index);
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }

  Widget getListItem(int i) {
    if (data == null || data.length < 1) return null;
    if (i == 0) {
      return Container(
        margin: EdgeInsets.all(4),
        child: Center(
          child: Text(
            "Titles",
            style:AppStyle.font_playfairdisplay,
          ),
        ),
      );
    }

    return Container(
      child: Container(
        margin: EdgeInsets.all(4.0),
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Wrap(
            children: <Widget>[
             Padding( child:Text(
                data[i]['title'].toString(),
                style: TextStyle(fontSize: 18,fontFamily: font_wonderunitsanssemibold,color:Colors.black),
              ),
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
             ),

              Text(
                data[i]['body'].toString(),
                style: TextStyle(fontSize: 16,fontFamily:font_wonderunitsansregular,color: Colors.grey[800]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

