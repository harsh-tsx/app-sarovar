import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/presentation/splashthree_screen/models/splashthree_model.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';

/// A controller class for the SplashthreeScreen.
///
/// This class manages the state of the SplashthreeScreen, including the
/// current splashthreeModelObj
class SplashthreeController extends AuthController {
  bool astrologer;
  SplashthreeController({this.astrologer = false});

  Rx<SplashthreeModel> splashthreeModelObj = SplashthreeModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () async {
      if (getToken() != null) {
        Get.offNamed(AppRoutes.dashboard);
        return;
      }
      Get.offNamed(AppRoutes.loginScreen);
    });
  }
}
