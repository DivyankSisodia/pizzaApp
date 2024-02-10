import 'package:flutter/material.dart';

const primaryColor = Color(0xFFB28D60);
const secondaryColor = Color.fromARGB(255, 252, 240, 227);
const backgroundColor = Color.fromARGB(255, 255, 255, 255);
const textColor = Color(0xFF2A1F1E);
const tertiaryColor = Color(0xFFD8AA75);
const smallTextColor = Color.fromARGB(255, 123, 123, 123);

class AppTheme {
  static const appBarBlackTitle = TextStyle(
    color: textColor,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  static const appBarBlackTitleDetail = TextStyle(
    color: textColor,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static const appBarColorTitle = TextStyle(
    color: primaryColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const smallText = TextStyle(
    color: smallTextColor,
    fontSize: 15,
  );
  static const meduimText = TextStyle(
    color: textColor,
    fontSize: 22,
  );

  static const priceTextMain = TextStyle(
    color: tertiaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 28,
  );
  static const priceTextDetail = TextStyle(
    color: tertiaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );
}
