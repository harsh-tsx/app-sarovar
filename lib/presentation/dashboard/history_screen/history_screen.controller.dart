import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';

class HistoryScreenController extends AuthController {
  var currentTab = "IN".obs;
  var inHistoryList = <EmployeeStoreOrdersGet$Response$Data$Item>[].obs;
  var outHistoryList = <EmployeeStoreReturnOrderGet$Response$Data$Item>[].obs;

  var isInLoading = false.obs;
  var isOutLoading = false.obs;

  var inPage = 0.obs;
  var inSize = 10.obs;

  var outPage = 0.obs;
  var outSize = 10.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  getInHistory([int? givenPage]) async {
    try {
      isInLoading.value = true;
      if ((givenPage != null && givenPage < inPage.value) || givenPage == 0) {
        inHistoryList.clear();
      }

      inPage.value = givenPage ?? inPage.value;

      var request =
          await ApiClient.employeeStoreOrdersGet(page: inPage.value.toString(), size: inSize.value.toString());

      print("getInHistory request: ${request.body}");

      if (!(request.body?.status ?? false)) {
        isInLoading.value = false;
        Toast.error(request?.body?.message);

        return;
      }

      inHistoryList.addAll(request.body?.data ?? []);
      isInLoading.value = false;
      update();
    } catch (error) {
      isInLoading.value = false;
      update();
    }
  }

  getOutHistory([int? givenPage]) async {
    isOutLoading.value = true;
    if ((givenPage != null && givenPage < outPage.value) || givenPage == 0) {
      outHistoryList.clear();
    }

    outPage.value = givenPage ?? outPage.value;

    var request =
        await ApiClient.employeeStoreReturnOrderGet(page: outPage.value.toString(), size: outSize.value.toString());

    print("getOutHistory request: ${request.body}");

    if (!(request.body?.status ?? false)) {
      isOutLoading.value = false;
      Toast.error(request?.body?.message);
      return;
    }

    outHistoryList.addAll(request.body?.data ?? []);
    isOutLoading.value = false;
  }

  handleCurrentTabChange(value) {
    currentTab.value = value;
    update();
  }
}
