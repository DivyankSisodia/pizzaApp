// ignore_for_file: file_names

import 'package:apppizza/constants/app_theme.dart';
import 'package:apppizza/widget/widgets/chip.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import '../widget/bottom_nav.dart';
import '../widget/card_list.dart';
import '../widget/categories.dart';
import '../widget/search_field.dart';

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
          child: Image.asset(
            'assets/icons/menu.png',
            fit: BoxFit.cover,
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // search bar
              const SearchField(),
              const Gap(30),
              // categories
              const Categories(),
              // pizzaGallery
              const Gap(30),
              Container(
                height: 430,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: CardList(),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              )

              // popularItems
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottonNavBar(),
    );
  }
}
