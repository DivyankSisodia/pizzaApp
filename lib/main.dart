import 'package:apppizza/view/Home_page.dart';
import 'package:flutter/material.dart';

import 'view/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const HomePage(),
    );
  }
}
