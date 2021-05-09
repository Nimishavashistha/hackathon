import 'package:flutter/material.dart';

class ScreenConfig {
  static double deviceWidth;
  static double deviceHeight;
  static double designHeight = 1300;
  static double designWidth = 600;
  static init(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
  }

  // Designer user 1300 device height,
  // so I have to normalize to the device height
  static double getProportionalHeight(height) {
    return (height / designHeight) * deviceHeight;
  }

  static double getProportionalWidth(width) {
    return (width / designWidth) * deviceWidth;
  }
}

const iPrimarryColor = Color(0xFFF9FCFF);
const iAccentColor = Color(0x800080);
const iAccentColor2 = Color(0x8A2BE2);
const primaryColor = Color(0xFFe1eaf7);
const secondaryColor = Color(0xFF264f8c);
const bgColor = Color(0xFF212332);
const defaultPadding = 16.0;

const demoData = [
  {"price": 5, "quantity": 2, "itemDesc": "transaction 1"},
  {"price": 10, "quantity": 4, "itemDesc": "transaction 2"},
  {"price": 14, "quantity": 1, "itemDesc": "transaction 3"}
];
