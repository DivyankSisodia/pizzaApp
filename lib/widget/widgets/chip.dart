import 'package:flutter/material.dart';

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
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: color,
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
      shape: shape,
    );
  }
}
