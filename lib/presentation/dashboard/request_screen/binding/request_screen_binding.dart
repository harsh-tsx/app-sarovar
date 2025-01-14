import '../controller/request_screen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeScreen.
///
/// This class ensures that the HomeController is created when the
/// HomeScreen is first loaded.
class RequestScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestScreenController());
  }
}
