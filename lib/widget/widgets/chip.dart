import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_theme.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.label,
    required this.color,
    required this.shape,
    required this.fontWeight,
    required this.textColor,
  });

  final String label;
  final Color color;
  final OutlinedBorder shape;
  final FontWeight fontWeight;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: GoogleFonts.poppins(
          textStyle: AppTheme.smallText.copyWith(
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
      backgroundColor: color,
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
      shape: shape,
    );
  }
}
