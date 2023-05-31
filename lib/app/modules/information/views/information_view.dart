import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/information_controller.dart';

class InformationView extends GetView<InformationController> {
  const InformationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9FB),
      appBar: AppBar(
        title: Text(
          'Tentang Aplikasi',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF303030),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFF9F9FB),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF6AC3E9),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aplikasi Apakah Ini?",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Aplikasi ini merupakan aplikasi untuk memvalidasi string Bahasa Indonesia dengan menggunakan metode Table Filling (CYK). Aplikasi ini berbasis multiplatform sehingga dapat di jalankan baik di android maupun iOS. ",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Color(0xFFA3A3A3),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Versi Aplikasi",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "v2.0.0",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Color(0xFFA3A3A3),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Tim Pengembang Aplikasi",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 7,
                  height: 7,
                  decoration: new BoxDecoration(
                    color: Color(0xFFA3A3A3),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Putu Agus Dharma Kusuma",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Color(0xFFA3A3A3),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 7,
                  height: 7,
                  decoration: new BoxDecoration(
                    color: Color(0xFFA3A3A3),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Putu Bagus Rangga Permana Putra Astawan",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Color(0xFFA3A3A3),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
