import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../widgets/elv_button.dart';
import '../../../../widgets/home_text.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeText(
                        blur: 70,
                        text: "Let's enjoy the",
                        weight: FontWeight.w300),
                    HomeText(
                      text: "Beautiful World",
                      blur: 120.0,
                      weight: FontWeight.w700,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                children: [
                  ElvButton(
                    text: "Sign In",
                    color: Colors.deepPurple,
                  ),
                  SizedBox(height: 20),
                  ElvButton(
                    text: "Create an account",
                    color: Color.fromARGB(255, 162, 120, 234),
                  ),
                  SizedBox(height: 25),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Skip",
                      style: GoogleFonts.poppins(
                          fontSize: 18, color: Colors.black87),
                    ),
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
