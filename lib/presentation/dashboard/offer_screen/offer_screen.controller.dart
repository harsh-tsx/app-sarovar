import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';

class OfferScreenController extends AuthController {
  var currentTab = "IN".obs;
  var inHistoryList = <EmployeeStoreOrdersGet$Response$Data$Item>[].obs;
  var outHistoryList = <EmployeeStoreOrdersGet$Response$Data$Item>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getInHistory(0, 10);
  }

  getInHistory(page, size) async {
    var request = await ApiClient.employeeStoreOrdersGet(
        page: page.toString(), size: size.toString());

    print("getInHistory request: ${request.body}");

    if (!(request.body?.status ?? false)) {
      Toast.error(request?.body?.message);
      return;
    }

    inHistoryList.addAll(request.body?.data ?? []);
  }

  getOutHistory(page, size) async {
    var request = await ApiClient.employeeStoreOrdersGet(
        page: page.toString(), size: size.toString());

    print("getOutHistory request: ${request.body}");

    if (!(request.body?.status ?? false)) {
      Toast.error(request?.body?.message);
      return;
    }

    outHistoryList.addAll(request.body?.data ?? []);
  }

  handleCurrentTabChange(value) {
    currentTab.value = value;
    update();
  }
}
