import 'package:get/get.dart';

import '../widgets/loading.dart';

void loadingAnimationDialog() {
  Get.dialog(
    const LoadingAnimation(),
    barrierDismissible: false,
    useSafeArea: false,
  );
}
