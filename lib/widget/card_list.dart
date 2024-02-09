import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/app_theme.dart';

class CardList extends StatelessWidget {
  const CardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 250,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(-10, -3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: ClipOval(
                child: SizedBox.fromSize(
              size: const Size.fromRadius(100),
              child: Image.asset(
                'assets/images/pizza1.jpeg',
                height: 300,
                width: 250,
                fit: BoxFit.cover,
              ),
            )),
          ),
          const Text('Pizza\nMargherita', style: AppTheme.appBarBlackTitle),
          const Text(
            'with cheese',
            style: TextStyle(
              color: smallTextColor,
              fontSize: 16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('\$${97}'),
              IconButton(
                onPressed: () {},
                icon: const Icon(Iconsax.add_circle),
              )
            ],
          )
        ],
      ),
    );
  }
}
