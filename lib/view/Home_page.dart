// ignore_for_file: file_names
import 'dart:convert';
import 'package:apppizza/constants/app_theme.dart';
import 'package:apppizza/widget/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/bottom_nav.dart';
import '../widget/categories.dart';
import '../widget/widgets/search_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _items = [];

  @override
  void initState() {
    super.initState();
    readJson(); // Call readJson function when widget is initialized
  }

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/pizza.json');
    final List<dynamic> data = json.decode(response);
    setState(() {
      _items = data;
      debugPrint('.. number of items: ${_items.length}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            'assets/icons/menu.png',
            fit: BoxFit.cover,
          ),
        ),
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pizza',
              style: GoogleFonts.poppins(
                textStyle: AppTheme.appBarBlackTitle,
              ),
            ),
            Text(
              'corner',
              style: GoogleFonts.poppins(
                textStyle: AppTheme.appBarColorTitle,
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Image.asset(
                  'assets/icons/bell.png',
                  height: 25,
                ),
              ),
              Positioned(
                top: 0,
                right: 18,
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: const BoxDecoration(
                    color: tertiaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // search bar
              SearchField(items: _items), // Pass _items list here
              const Gap(30),
              // categories
              const Categories(),
              // pizzaGallery
              const Gap(30),
              Cartlist(items: _items),
              // popularItems
              const Gap(25),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Items 🔥',
                      style: GoogleFonts.poppins(
                        textStyle: AppTheme.appBarBlackTitle,
                      ),
                    ),
                    Text(
                      'View all',
                      style: GoogleFonts.poppins(
                        textStyle: AppTheme.smallText,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottonNavBar(),
    );
  }
}
