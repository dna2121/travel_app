import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/app/routes/app_pages.dart';

import '../../../../widgets/elv_button.dart';
import '../../../../widgets/welcome_text.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WelcomeText(
                        fontsize: 35,
                        blur: 70,
                        text: "Let's enjoy the",
                        weight: FontWeight.w300),
                    WelcomeText(
                      fontsize: 35,
                      text: "Beautiful World",
                      blur: 120.0,
                      weight: FontWeight.w700,
                    )
                  ],
                ),
              ),
            ),
            Image.asset(
              "images/cover.png",
              height: 350,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                children: [
                  ElvButton(
                    text: "Sign In",
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(height: 10),
                  ElvButton(
                    text: "Create an account",
                    color: const Color.fromARGB(255, 162, 120, 234),
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.HOME);
                    },
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
