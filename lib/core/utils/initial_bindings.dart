import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(AuthController());
    // Connectivity connectivity = Connectivity();
    // Get.put(NetworkInfo(connectivity));
    // Get.put(HomeController());
  }
}
