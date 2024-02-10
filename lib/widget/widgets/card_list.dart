import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/app_theme.dart';

class CardList extends StatelessWidget {
  const CardList({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  final String img;
  final String title;
  final String subtitle;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 390,
        width: MediaQuery.of(context).size.width * 0.65,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(5, 6),
              spreadRadius: 8,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                    color: secondaryColor,
                  ),
                  child: ClipRRect(
                    // ClipRRect to clip the image to rounded corners
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      img,
                      height: 220, // Adjust the height as per your requirement
                      width: MediaQuery.of(context).size.width *
                          0.65, // Adjust the width as per your requirement
                      fit: BoxFit
                          .cover, // Ensure the image covers the entire space
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Text(
                title,
                style: GoogleFonts.poppins(
                  textStyle: AppTheme.appBarBlackTitle,
                ),
              ),
              Text(
                subtitle,
                style: GoogleFonts.poppins(
                  textStyle: AppTheme.smallText,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$$price',
                    style: GoogleFonts.poppins(
                      textStyle: AppTheme.priceTextMain,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: DecoratedBox(
                      decoration: const BoxDecoration(
                        // Remove other shadow properties
                        boxShadow: [],
                      ),
                      child: Stack(
                        children: [
                          // Original icon without shadow
                          // Shadow positioned at the bottom
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 5,
                            child: Container(
                              height: 30,
                              width: 30, // Adjust height for shadow size
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.6),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                    // Offset to position shadow only at bottom
                                    offset: const Offset(5.0, 2.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Icon(
                            Iconsax.add_circle5,
                            size: 40,
                            color: textColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
