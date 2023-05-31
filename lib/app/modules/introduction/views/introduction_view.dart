import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:string_validation_v2/app/routes/app_pages.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SizedBox(
            height: Get.height,
            child: Stack(
              children: [
                Container(
                  child: Lottie.asset("assets/lottie/hello.json"),
                ),
                // Lottie.asset("assets/lottie/hello.json"),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: Get.width,
                    height: 320,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "STRING VALIDATION",
                          style: GoogleFonts.poppins(
                            fontSize: 26,
                            color: Color(0xFF6AC3E9),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "String validation merupakan aplikasi validasi string khusus Bahasa Indonesia.",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA3A3A3),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(),
                        TextButton(
                          onPressed: () {
                            Get.offNamed(Routes.HOME);
                          },
                          child: Container(
                            width: 165,
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF4284DB),
                                  Color(0xFF29EAC4),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Mulai",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
