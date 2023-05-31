import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:string_validation_v2/app/modules/home/providers/home_providers.dart';

import '../../../helpers/loading_dialog.dart';
import '../../../models/words.dart';

class HomeController extends GetxController {
  var valid = false.obs;
  final formKey = GlobalKey<FormState>();
  final TextEditingController textEditingController = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  Future<void> getDataAPI(BuildContext context) async {
    Get.focusScope?.unfocus();
    loadingAnimationDialog();
    try {
      Words w = await postWords(textEditingController.text);
      valid.value = w.result;
      var validString = valid.value ? "valid" : "tidak valid";
      Get.defaultDialog(
        titlePadding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        title: "Result",
        contentPadding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        middleText: "Kalimat yang anda masukkan ${validString}",
        textConfirm: "Okay",
        confirmTextColor: Colors.white,
        buttonColor: Color(0xFF6AC3E9),
        onConfirm: () {
          Get.back();
          Get.back();
        },
      );
    } catch (e) {
      Get.back();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          duration: const Duration(seconds: 1),
        ),
      );
    }
  }
}
