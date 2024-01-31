import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CircularButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: Icon(icon),
        ),
        Text(
          text,
          style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
