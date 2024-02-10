import 'package:apppizza/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search ...',
          hintStyle: const TextStyle(
            color: smallTextColor,
            fontSize: 16,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Icon(
              Iconsax.search_favorite,
              color: smallTextColor,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Image.asset(
              'assets/icons/settings.png',
              height: 20,
              width: 25,
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
        controller: TextEditingController(),
      ),
    );
  }
}
