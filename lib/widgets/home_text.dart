import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeText extends StatelessWidget {
  HomeText(
      {Key? key, required this.blur, required this.text, required this.weight})
      : super(key: key);

  String text;
  FontWeight weight;
  double blur;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 35,
        fontWeight: weight,
        shadows: [
          Shadow(
            blurRadius: blur,
            offset: Offset(12, 7),
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
