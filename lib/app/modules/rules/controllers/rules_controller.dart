import 'package:get/get.dart';
import 'package:string_validation_v2/app/modules/rules/providers/rules_providers.dart';

import '../../../models/rules.dart';

class RulesController extends GetxController {
  //TODO: Implement RulesController

  Rules? data;
  RxBool isLoading = true.obs;

  final count = 0.obs;
  @override
  void onInit() async {
    data = await getRules();
    isLoading.value = false;
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
}
