import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 40,
      ),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromRGBO(243, 243, 243, 1),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(112, 144, 176, 0.2),
              blurRadius: 20,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: GoogleFonts.poppins(
                color: const Color.fromRGBO(142, 142, 142, 1),
              ),
              suffixIcon: const Icon(Icons.search),
              suffixIconColor: Colors.black,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}