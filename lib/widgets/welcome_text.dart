// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeText extends StatelessWidget {
  WelcomeText(
      {Key? key,
      required this.blur,
      required this.text,
      required this.weight,
      required this.fontsize})
      : super(key: key);

  String text;
  FontWeight weight;
  double blur;
  double fontsize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: fontsize,
        fontWeight: weight,
        shadows: [
          Shadow(
            blurRadius: blur,
            offset: const Offset(12, 7),
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
