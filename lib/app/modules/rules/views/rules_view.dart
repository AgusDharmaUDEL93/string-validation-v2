import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletons/skeletons.dart';

import '../controllers/rules_controller.dart';

class RulesView extends GetView<RulesController> {
  const RulesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9FB),
      appBar: AppBar(
        title: Text(
          'Rules',
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rules",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Obx(() => controller.isLoading.value
                  ? Container(
                      child: SkeletonParagraph(
                      style: SkeletonParagraphStyle(
                        lines: 30,
                        lineStyle: SkeletonLineStyle(
                          randomLength: true,
                        ),
                      ),
                    ))
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.data!.result.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.data!.result[index],
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFFA3A3A3),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        );
                      },
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
