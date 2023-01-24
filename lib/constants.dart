import "package:flutter/material.dart";

const Color kPrimaryColor = Color(0xFF39C7A5);
const Color kGreyColor = Color(0xFF888888);
const Color kHoverColor = Color(0xFFF6F6F6);
const Color kNavyBlue = Color(0xFF4D5571);
const double kDefaultPadding = 20;

const TextStyle kBodyGreyText =
    TextStyle(fontFamily: "Roboto", color: Colors.black45, height: 1.5);

Size kSize(context) {
  return MediaQuery.of(context).size;
}

const kInputDecoration = InputDecoration(
    
   
    hintStyle: TextStyle(
        fontFamily: "Quicksand", color: Colors.grey, letterSpacing: -0.6),
    border: InputBorder.none);
