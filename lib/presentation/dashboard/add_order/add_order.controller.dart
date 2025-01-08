import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';

class AddOrderController extends AuthController {
  var canCount = 20.obs;
  var crossAxisCount = 1.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("hello");

    if (canCount.value >= 5) {
      crossAxisCount.value = 5;
    } else {
      crossAxisCount.value = canCount.value;
    }
  }

  getActiveOrder() async {
    try {
      var request = await ApiClient.employeeStoreEmployeeOrdersActiveOrderGet(page: page, size: size)
    } catch (error) {
      print("error: ${error}");
    }
  }
}
