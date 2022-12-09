import 'package:get/get.dart';

class TestPageViewController extends GetxController {
  RxBool isVisible = true.obs;

  void ShowAdmin () {
    isVisible.value = true;
  }

  void ShowUser() {
    isVisible.value = false;
  }

  void toggleContainer() {
    isVisible.value = !isVisible.value;
  }
}