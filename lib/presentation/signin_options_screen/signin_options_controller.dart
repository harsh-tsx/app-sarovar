import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/presentation/splashthree_screen/models/splashthree_model.dart';
import 'package:otpless_flutter/otpless_flutter.dart';

/// A controller class for the SplashthreeScreen.
///
/// This class manages the state of the SplashthreeScreen, including the
/// current splashthreeModelObj
class SignInOptionsController extends GetxController {
  bool astrologer;
  SignInOptionsController({this.astrologer = false});
  final _otplessFlutterPlugin = Otpless();

  Rx<SplashthreeModel> splashthreeModelObj = SplashthreeModel().obs;

  @override
  onInit() {
    super.onInit();
    _otplessFlutterPlugin.initHeadless("NUBM7QDUZ7PQJ2963I3Q");
    _otplessFlutterPlugin.setHeadlessCallback(onHeadlessResult);
  }

  @override
  void onReady() {
    // Future.delayed(const Duration(milliseconds: 3000), () {
    //   if (getToken() != null) {
    //     Get.offNamed(AppRoutes.dashboard);
    //     return;
    //   }
    //   Get.toNamed(AppRoutes.dashboard);
    // });
  }

  void onHeadlessResult(dynamic result) {
    print("onHeadlessResult: ${result}");
  }

  initiateAuth() async {
    Map<String, dynamic> arg = {'channelType': "GOOGLE"};
    _otplessFlutterPlugin.startHeadless(onHeadlessResult, arg);
  }
}
