import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/controller/home_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(AuthController());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    // Get.put(HomeController());
  }
}
