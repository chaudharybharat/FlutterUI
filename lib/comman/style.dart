import 'package:flutter/material.dart';

import 'colors.dart';

/////////////////////////////////
///   TEXT STYLES
////////////////////////////////

 class AppStyle {


   static TextStyle font_playfairdisplay = TextStyle(
       fontFamily: 'playfairdisplaybold',
       fontSize: 20,
       color: Colors.grey[900],
       letterSpacing: 2);

   static TextStyle font_button_text = TextStyle(
       fontFamily: 'sfprodisplaymedium',
       fontSize: 16,
       letterSpacing: 2,
       color: Colors.grey[900]);
   static TextStyle font_playfairdisplaybolditalic = TextStyle(
       fontFamily: 'playfairdisplaybolditalic',
       fontSize: 20,
       color: Colors.black,
       letterSpacing: 2);

   static TextStyle font_sfprodisplaymedium = TextStyle(
       fontFamily: 'sfprodisplaymedium',
       fontSize: 20,
       color: Colors.black,
       letterSpacing: 2);

   static TextStyle font_sfprodisplayregular = TextStyle(
       fontFamily: 'sfprodisplayregular',
       fontSize: 20,
       color: Colors.black,
       letterSpacing: 2);
   static TextStyle font_wondernnitsansregularitalic = TextStyle(
       fontFamily: 'wondernnitsansregularitalic',
       fontSize: 20,
       color: Colors.black,
       letterSpacing: 2);

   static TextStyle font_bottom_tab_text = TextStyle(
     fontFamily: 'wonderunitsansregular',
     fontSize: 12,
     color: Colors.black,
   );


///////////////////////////////////
   /// BOX DECORATION STYLES
//////////////////////////////////

   static BoxDecoration authPlateDecoration = BoxDecoration(
       color: AppColors.white,
       boxShadow: [
         BoxShadow(
             color: Color.fromRGBO(0, 0, 0, .1),
             blurRadius: 10,
             spreadRadius: 5,
             offset: Offset(0, 1))
       ],
       borderRadius: BorderRadiusDirectional.only(
           bottomEnd: Radius.circular(20), bottomStart: Radius.circular(20)));

/////////////////////////////////////
   /// INPUT FIELD DECORATION STYLES
////////////////////////////////////

   static OutlineInputBorder inputFieldFocusedBorderStyle = OutlineInputBorder(
       borderRadius: BorderRadius.all(Radius.circular(6)),
       borderSide: BorderSide(
         color: AppColors.primaryColor,
       ));

   static OutlineInputBorder inputFieldDefaultBorderStyle = OutlineInputBorder(
       gapPadding: 0, borderRadius: BorderRadius.all(Radius.circular(6)));
 }