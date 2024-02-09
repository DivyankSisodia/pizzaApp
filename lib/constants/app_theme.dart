import 'package:flutter/material.dart';

const primaryColor = Color(0xFFB28D60);
const secondaryColor = Color(0xFFFCE6D3);
const backgroundColor = Color.fromARGB(255, 255, 255, 255);
const textColor = Color(0xFF2A1F1E);
const tertiaryColor = Color(0xFFD8AA75);
const smallTextColor = Color.fromARGB(255, 123, 123, 123);

class AppTheme {
  static const appBarBlackTitle = TextStyle(
    color: textColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const appBarColorTitle = TextStyle(
    color: primaryColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}
