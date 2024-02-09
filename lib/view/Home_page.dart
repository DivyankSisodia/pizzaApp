import 'package:apppizza/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            child: Image.asset(
              'assets/icons/menu.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pizza', style: AppTheme.appBarBlackTitle),
            Text('corner', style: AppTheme.appBarColorTitle),
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
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              // search bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search for pizza',
                  hintStyle: const TextStyle(
                    color: smallTextColor,
                    fontSize: 16,
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Icon(
                      Iconsax.search_favorite,
                      color: smallTextColor,
                    ),
                  ),
                  filled: true,
                  fillColor: secondaryColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: secondaryColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: secondaryColor,
                    ),
                  ),
                ),
              ),
              // categories

              // pizzaGallery

              // popularItems
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
          child: GNav(
            gap: 8,
            backgroundColor: secondaryColor,
            curve: Curves.easeInOut,
            color: smallTextColor,
            activeColor: backgroundColor,
            tabBackgroundColor: textColor,
            onTabChange: (index) {
              print(index);
            },
            tabs: const [
              GButton(
                margin: EdgeInsets.only(right: 2, top: 7, bottom: 7),
                icon: Icons.home_filled,
                text: 'Home',
                textStyle: TextStyle(
                  fontSize: 16,
                  color: backgroundColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GButton(
                margin: EdgeInsets.only(right: 2, top: 7, bottom: 7),
                icon: Icons.menu,
                text: 'Search',
                textStyle: TextStyle(
                  fontSize: 16,
                  color: backgroundColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GButton(
                margin: EdgeInsets.only(right: 2, top: 7, bottom: 7),
                icon: Icons.shopping_cart,
                text: 'Cart',
                textStyle: TextStyle(
                  fontSize: 16,
                  color: backgroundColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GButton(
                margin: EdgeInsets.only(right: 2, top: 7, bottom: 7),
                icon: Icons.person,
                text: 'Profile',
                textStyle: TextStyle(
                  fontSize: 16,
                  color: backgroundColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
