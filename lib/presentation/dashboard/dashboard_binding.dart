import 'package:app_1point2_store/presentation/dashboard/home_screen/controller/home_controller.dart';

import 'dashboard_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeScreen.
///
/// This class ensures that the HomeController is created when the
/// HomeScreen is first loaded.
class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => HomeController());
  }
}
