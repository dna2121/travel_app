import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlacesItem extends StatelessWidget {
  const PlacesItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        width: 205,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 227, 227, 227),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(51, 104, 142, 181),
              blurRadius: 20,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network("https://picsum.photos/200/300",
                    height: 183, width: 177, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 15, 4),
              child: Text(
                "Mountain",
                style: GoogleFonts.poppins(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 15, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nepal",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "⭐ 4.5",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
