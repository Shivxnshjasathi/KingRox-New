import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextScreen extends StatelessWidget {
  final String text; // The text to display
  final FontWeight fontWeight; // Font weight
  final double fontSize; // Font size
  final Color color; // Text color

  const CustomTextScreen({
    Key? key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16.0,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
      textAlign: TextAlign.center,
    );
  }
}
