import 'package:get/get.dart';

class NavigationController extends GetxController {
  RxString title = "Dashboard".obs;
  RxInt viewIndex = 0.obs;

  void updatePanelView({
    required int index,
  }) {
    viewIndex.value = index;
  }
}
