import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';

class OfferScreenController extends AuthController {
  var historyList = <EmployeeStoreOrdersGet$Response$Data$Item>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getHistory(0, 10);
  }

  getHistory(page, size) async {
    var request = await ApiClient.employeeStoreOrdersGet(
        page: page.toString(), size: size.toString());

    print("getHistory request: ${request.body}");

    if (!(request.body?.status ?? false)) {
      Toast.error(request?.body?.message);
      return;
    }

    historyList.addAll(request.body?.data ?? []);
  }
}
