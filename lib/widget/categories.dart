import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/app_theme.dart';
import 'widgets/chip.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ChipWidget(
              label: 'Pizza',
              color: secondaryColor,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fontWeight: FontWeight.bold,
              textColor: textColor,
            ),
            const Gap(20),
            ChipWidget(
              label: 'Food',
              color: secondaryColor,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: smallTextColor, width: 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fontWeight: FontWeight.normal,
              textColor: smallTextColor,
            ),
            const Gap(20),
            ChipWidget(
              label: 'Drink',
              color: secondaryColor,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: smallTextColor, width: 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fontWeight: FontWeight.normal,
              textColor: smallTextColor,
            ),
            const Gap(20),
            ChipWidget(
              label: 'Top',
              color: secondaryColor,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: smallTextColor, width: 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fontWeight: FontWeight.normal,
              textColor: smallTextColor,
            ),
            const Gap(20),
            ChipWidget(
              label: 'North',
              color: secondaryColor,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: smallTextColor, width: 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fontWeight: FontWeight.normal,
              textColor: smallTextColor,
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
