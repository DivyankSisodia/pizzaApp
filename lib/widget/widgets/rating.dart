import 'package:apppizza/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Color.fromARGB(255, 229, 193, 33)),
        Text(
          ' 4.8 ',
          style: GoogleFonts.poppins(
            textStyle: AppTheme.smallBlackText,
          ),
        ),
        Text(
          ' (9,385)',
          style: GoogleFonts.poppins(
            textStyle: AppTheme.smallText,
          ),
        ),
      ],
    );
  }
}
