import 'package:get/get.dart';

import '../controllers/full_controller.dart';

class FullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FullController>(
      () => FullController(),
    );
  }
}
