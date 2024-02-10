import 'package:apppizza/constants/app_theme.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.star, color: tertiaryColor),
        Text(
          '4.8 ',
          style: AppTheme.smallBlackText,
        ),
        Text(
          ' (9,385)',
          style: AppTheme.smallText,
        ),
      ],
    );
  }
}
