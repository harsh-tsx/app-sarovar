import '../controller/splashtwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashtwoScreen.
///
/// This class ensures that the SplashtwoController is created when the
/// SplashtwoScreen is first loaded.
class SplashtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashtwoController());
  }
}
