import 'package:flutter/material.dart';

const KbackgroundColor = Color(0xFFB0C5A4);
const KbuttonColor = Color(0xFFfe8f33);
const KcardColor = Color(0xFFB19470);
const KwhitColor = Color(0xFFF8FAE5);
const KoutlineBorderColor = Color(0xFFFA7070);
const KlinearGradientColor = LinearGradient(
  colors: [
    Color(0xFFFA7070),
    Color(0xFFC6EBC5),
  ],
);

const kTextFildDecoration = InputDecoration(
  icon: Icon(
    Icons.person_outline,
    size: 20,
    color: KoutlineBorderColor,
  ),
  hintText: 'Enter a value',
  hintStyle: TextStyle(color: KwhitColor),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(20)),
  // ),
  // enabledBorder: OutlineInputBorder(
  //   borderSide: BorderSide(color: KoutlineBorderColor, width: 1.0),
  //   borderRadius: BorderRadius.all(Radius.circular(20)),
  // ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      style: BorderStyle.none,
      color: KoutlineBorderColor,
      width: 1.0,
    ),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
);
