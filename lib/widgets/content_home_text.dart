import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentHomeText extends StatelessWidget {
  ContentHomeText({Key? key, required this.text, required this.fontsize, this.fw})
      : super(key: key);

  String text;
  double fontsize;
  FontWeight? fw;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontsize,
        fontWeight: fw,
      ),
    );
  }
}
