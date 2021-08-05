import 'package:flutter/material.dart';

// Colors

const backgroundColor = Color(0xFFDDD1C7);
const primaryColor = Color(0xFF4C8056);
const secondaryColor = Color(0xFFC2CFB2);
const textColor = Color(0xFF4B4A67);

//Styles

const textTheme = TextTheme(
  bodyText1: TextStyle(
    color: textColor,
    fontSize: 16,
    fontFamily: 'Ubuntu',
  ),
  caption: TextStyle(
    color: textColor,
    fontSize: 14,
    fontFamily: 'Ubuntu',
  ),
  subtitle2: TextStyle(
    color: primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontFamily: 'Ubuntu',
  ),
);

const buttonTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  fontFamily: 'Ubuntu',
);

const enabledOutlinedBorderTheme = BorderSide(color: Colors.grey);

const focusedOutlinedBorderTheme = BorderSide(color: primaryColor);

const textFieldLabelStyle = TextStyle(color: Colors.grey);
