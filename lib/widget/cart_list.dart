import 'dart:math';

import 'package:apppizza/widget/widgets/card_list.dart';
import 'package:flutter/material.dart';

import '../view/detail_page.dart';

class Cartlist extends StatelessWidget {
  const Cartlist({
    super.key,
    required List items,
  }) : _items = items;

  final List _items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      // child: ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: const [
      //     CardList(
      //       price: 9.7,
      //       img: 'assets/images/pizza2.1.jpeg',
      //       title: 'Pizza\nMargherita',
      //       subtitle: 'with cheese',
      //     ),
      //     Gap(10),
      //     CardList(
      //       price: 8,
      //       img: 'assets/images/3.jpeg',
      //       title: 'Pizza\nPepperoni',
      //       subtitle: 'with mushrooms',
      //     ),
      //     Gap(10),
      //     CardList(
      //       price: 7.9,
      //       img: 'assets/images/8.jpeg',
      //       title: 'Vegetarian\nPizza',
      //       subtitle: 'with veggies',
      //     ),
      //     Gap(10),
      //   ],
      // ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: min(3, _items.length), // Set the number of items to display
        itemBuilder: (BuildContext context, int index) {
          final item = _items[index]; // Get the item at the current index
          // Extract the name of the pizza
          String pizzaName = item['name'];
          // Split the name into two lines
          List<String> nameParts = pizzaName.split(' ');
          String firstLine = nameParts[0]; // First word
          String secondLine = nameParts.sublist(1).join(' '); // Remaining words
          // Create a CardList widget with data from the item
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    name: item['name'],
                    image: item['image'],
                    description: item['description'],
                    price: item['price'].toDouble(),
                    shortDescription: item['shortDescription'],
                  ),
                ),
              );
            },
            child: CardList(
              price: item['price'].toDouble(),
              img: item['image'],
              title: '$secondLine\n$firstLine',
              subtitle: item['shortDescription'],
            ),
          );
        },
      ),
    );
  }
}
