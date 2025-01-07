import '../controller/splashthree_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashthreeScreen.
///
/// This class ensures that the SplashthreeController is created when the
/// SplashthreeScreen is first loaded.
class SplashthreeBinding extends Bindings {
  bool astrologer;
  SplashthreeBinding({this.astrologer = false});

  @override
  void dependencies() {
    Get.lazyPut(() => SplashthreeController(astrologer: astrologer));
  }
}
