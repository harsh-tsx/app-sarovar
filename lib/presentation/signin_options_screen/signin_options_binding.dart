import 'package:app_1point2_store/presentation/signin_options_screen/signin_options_controller.dart';

import 'package:get/get.dart';

/// A binding class for the SplashthreeScreen.
///
/// This class ensures that the SplashthreeController is created when the
/// SplashthreeScreen is first loaded.
class SignInOptionsBinding extends Bindings {
  bool astrologer;
  SignInOptionsBinding({this.astrologer = false});

  @override
  void dependencies() {
    Get.lazyPut(() => SignInOptionsController(astrologer: astrologer));
  }
}
