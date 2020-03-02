import 'package:flutter/material.dart';
import 'package:flutter_api_calls/comman/string.dart';

class SecondScreen extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return _secondScreen();
  }
}
class _secondScreen extends State<SecondScreen> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialApp(home: Scaffold(
  backgroundColor: Colors.blue,
  body: ListView(
  children: <Widget>[
   Padding(
    padding: EdgeInsets.only(top: 40),
    child: Row(
      children: <Widget>[

        Padding(
          padding: EdgeInsets.only(top: 50),
            child:
        Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),topRight: Radius.circular(75.0))
          ),
          child: Column(
           // primary: false,
            //padding: EdgeInsets.only(left: 25,right: 25,top: 50),
            children: <Widget>[

              SizedBox(height: 50,),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/recipe_first.jpg")
                    )
                ),
              ),
              SizedBox(height: 20),
              Text("Italian Chicken Sheet",style: TextStyle(fontFamily: font_wonderunitsanssemibold,fontSize: 18),),
              SizedBox(height: 10),
              Text("\$ 30 ",style: TextStyle(fontFamily: font_wonderunitsansregular,fontSize: 16),),
              SizedBox(height: 10),
            //  Text("Total amount \$${counter*30}",style: TextStyle(fontFamily: font_wonderunitsansregular,fontSize: 16),),
              RichText(
                  text: TextSpan(
                    text: 'Total amount',
                    style: TextStyle(fontFamily: font_wonderunitsansregular,fontSize: 16,color: Colors.black87),
                    children: <TextSpan>[
                      TextSpan(text: "  \$${counter*30}",style:TextStyle(fontFamily: font_wonderunitsanssemibold,fontSize: 18,color: Colors.black87) ),
                    ],
                  )),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
                    Container(

                      height: 65,
                      width: 60,
                      decoration: BoxDecoration(border: Border.all(color: Colors.indigo,
                      style: BorderStyle.solid,
                      width: 1),
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10)),
                      child: IconButton(icon: Icon(Icons.add,color: Colors.white,),onPressed: (){
                        setState(() {
                         counter++;
                        });
                      },),
                    ),
                    Container(height: 65,
                    width: 60,
                    decoration: BoxDecoration(border: Border.all(color: Colors.indigo,style: BorderStyle.solid,width: 1),
                   color: Colors.indigo,
                    borderRadius: BorderRadius.circular(10)),
                    child: IconButton(icon: Icon(Icons.remove,color: Colors.white,),onPressed: (){
                      setState(() {

                        if(counter>1){
                          counter--;
                        }
                      });
                    },),)
                  ],
                ),
              ) 
            ],
          ),
          )),


      ],
    ))


])));
  }
}
class _secondScreen1 extends State<SecondScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body:Padding(
        padding: EdgeInsets.only(top: 40,left: 15),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
     Container(
       height: 100,
       width: 100,
       decoration: BoxDecoration(
         shape: BoxShape.circle,
         image: DecorationImage(
           fit: BoxFit.fill,
           image: AssetImage("images/recipe_first.jpg")
         )
       ),
     ) ,
        Text("Italian Chicken Sheet",style: TextStyle(fontSize: 18,fontFamily: font_wonderunitsanssemibold),)],
    )));
  }

}