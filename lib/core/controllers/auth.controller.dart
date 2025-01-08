import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/api_client.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';

class AuthController extends GetxController {
  Rx<EmployeeStoreAuthMeGet$Response$Data> user =
      EmployeeStoreAuthMeGet$Response$Data().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    me();
  }

  me() async {
    try {
      var request = await ApiClient.employeeStoreAuthMeGet();
      print("request: ${request.body?.data}");
      if (!(request.body?.status ?? false)) {
        return;
      }

      user.value = request.body?.data ?? EmployeeStoreAuthMeGet$Response$Data();
      update();
    } catch (error) {
      print("error: ${error}");
    }
  }
}
