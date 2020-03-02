import 'package:flutter/material.dart';
import 'package:flutter_api_calls/comman/style.dart';

import './colors.dart';

FlatButton froyoFlatBtn(String text, onPressed) {
  return FlatButton(
    padding: EdgeInsets.all(14),
    onPressed: onPressed,
    child: Text(text,style: AppStyle.font_button_text,),
    textColor: AppColors.white,
    color: AppColors.primaryColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );
}

OutlineButton froyoOutlineBtn(String text, onPressed) {
  return OutlineButton(
    onPressed: onPressed,
    child: Text(text),
    textColor: AppColors.primaryColor,
    highlightedBorderColor: AppColors.highlightColor,
    borderSide: BorderSide(color: AppColors.primaryColor),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );
}