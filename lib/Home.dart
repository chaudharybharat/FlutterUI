
import 'package:flutter/material.dart';
import 'package:flutter_api_calls/comman/string.dart';

import 'SecondScreen.dart';


class Home extends StatefulWidget {
  @override
  _Home createState() => new _Home();
}

class _Home extends State<Home> {

  int counter = 4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  void incressCount(){
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialApp(home: Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10,left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),),
                Container(
                  width: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.menu,color: Colors.white,),
                      onPressed:() {},),
                      IconButton(icon: Icon(Icons.filter,color: Colors.white,),
                          onPressed: (){},)
                    ],
                  )
                  ,
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Row(
              children: <Widget>[
                Text("Health",style: TextStyle(fontFamily: font_wonderunitsanssemibold,color: Colors.white,
                fontSize: 30)),
                SizedBox(width: 10),
                Text("Food",style: TextStyle(fontFamily: font_wonderunitsansregular,color: Colors.white,
                    fontSize: 30))
              ],
            ),
          ),
          SizedBox(height: 20),

          Container(
            height: size.height-230.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0))
            ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25,right: 20),
                children: <Widget>[
                  SizedBox(height: 20),
                  buildRowItem(this,'images/recipe_first.jpg',"Italian Chicken Sheet", "\$23"),
                  buildRowItem(this,'images/recipe_five.jpeg', "Pasta alla normal", "\$55"),
                  buildRowItem(this,'images/recipe_four.jpg', "One-Pot Pasta With Ricotta", "\$23"),
                  buildRowItem(this,'images/recipe_sec.jpg', "Crispy Falafel", "\$120"),
                  buildRowItem(this,'images/recipe_third.jpg', "Chicken Recipe", "\$20")
                ],
              ),

          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,

              ),
            child:

           Padding(
             padding: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 5),
             child:  Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Container(
                     height: 65,
                     width: 60,
                     decoration: BoxDecoration(
                         border: Border.all(
                           color: Colors.grey,
                           style: BorderStyle.solid,
                           width: 1,
                         ),
                         borderRadius: BorderRadius.circular(10)
                     ),
                     child: IconButton(icon: Icon(Icons.search,color: Colors.black,) ,)
                 ),
                 Container(
                   alignment: Alignment.center,
                     height: 65,
                     width: 60,
                     decoration: BoxDecoration(
                         border: Border.all(
                           color: Colors.grey,
                           style: BorderStyle.solid,
                           width: 1,
                         ),
                         borderRadius: BorderRadius.circular(10)
                     ),
                     child:
                     Stack(
                       alignment: Alignment.center,
                       children: <Widget>[
                         IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {
                           setState(() {
                             counter = 0;
                           });
                         }),
                         counter != 0 ?  Positioned(
                           right: 5,
                           top: 1,
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
                     ) ,
                 ),
                 GestureDetector(
                     onTap: () {
                       print("tstset");
                       var route = new MaterialPageRoute(
                         builder: (BuildContext context) =>
                         new SecondScreen(),
                       );
                       Navigator.of(context).push(route);

                     },
                     child:
                 Container(
                   width: 120.0,
                   height: 65,
                   decoration: new BoxDecoration(
                     color: Colors.indigo,
                     border: new Border.all(color: Colors.indigo, width: 2.0),
                     borderRadius: new BorderRadius.circular(10.0),
                   ),
                   child:new Center(child: new Text('Checkout', style: new TextStyle(fontSize: 18.0, color: Colors.white,fontFamily: font_wonderunitsansregular),),),

                 ))


               ],
             ),
           )
          )

        ],
      ),
    ));
  }
}

//Navigator.push(
//context,
//MaterialPageRoute(builder: (context) => SecondRoute()),
//);


Widget buildRowItem(_Home homecontext,String imgPath,String food_name,String food_price){
  return Padding(
    padding:EdgeInsets.only(left: 10,right: 10,top: 10),
    child: InkWell(
      onTap: (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: <Widget>[
     Container(child: Row(
          children: <Widget>[
     new Container(
     width: 60.0,
         height: 60.0,
         decoration: new BoxDecoration(
             shape: BoxShape.circle,
             image: new DecorationImage(
                 fit: BoxFit.fill,
                 image: AssetImage(
                     imgPath)
             )
         )),
         SizedBox(width: 10),
         Column(crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Text(food_name,style:
             TextStyle(color: Colors.black,fontFamily: font_wonderunitsanssemibold,fontSize: 14),),
             SizedBox(height: 10),
             Text(food_price,style: TextStyle(color: Colors.grey,fontFamily: font_wonderunitsansregular),)
           ],)
     ]),),
       IconButton(icon: Icon(Icons.add,color: Colors.black,),
         onPressed: (){
           homecontext.incressCount();

         },)
     ],
      ),
    ),
  );
}