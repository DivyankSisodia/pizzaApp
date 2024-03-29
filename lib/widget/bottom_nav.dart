import 'package:apppizza/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottonNavBar extends StatefulWidget {
  const BottonNavBar({super.key});

  @override
  State<BottonNavBar> createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<BottonNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: GNav(
          gap: 8,
          backgroundColor: secondaryColor,
          curve: Curves.easeInOut,
          color: smallTextColor,
          activeColor: backgroundColor,
          tabBackgroundColor: textColor,
          onTabChange: (index) {
            debugPrint(index.toString());
          },
          tabs: [
            GButton(
              margin: const EdgeInsets.only(right: 2, top: 7, bottom: 7),
              icon: Icons.home_filled,
              text: 'Home',
              textStyle: GoogleFonts.poppins(
                textStyle: AppTheme.buttonthemesmall,
              ),
            ),
            GButton(
              margin: const EdgeInsets.only(right: 2, top: 7, bottom: 7),
              icon: Icons.menu,
              text: 'Search',
              textStyle: GoogleFonts.poppins(
                textStyle: AppTheme.buttonthemesmall,
              ),
            ),
            GButton(
              margin: const EdgeInsets.only(right: 2, top: 7, bottom: 7),
              icon: Icons.shopping_cart,
              text: 'Cart',
              textStyle: GoogleFonts.poppins(
                textStyle: AppTheme.buttonthemesmall,
              ),
            ),
            GButton(
              margin: const EdgeInsets.only(right: 2, top: 7, bottom: 7),
              icon: Icons.person,
              text: 'Profile',
              textStyle: GoogleFonts.poppins(
                textStyle: AppTheme.buttonthemesmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
