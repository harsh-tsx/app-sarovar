import '../controller/splashmain_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashmainScreen.
///
/// This class ensures that the SplashmainController is created when the
/// SplashmainScreen is first loaded.
class SplashmainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashmainController());
  }
}
