import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/presentation/dashboard/add_order/add_order.model.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class AddOrderController extends AuthController {
  var canCount = 0.obs;
  var crossAxisCount = 1.obs;
  var activeOrder =
      EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data().obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("hello");

    getActiveOrder();
  }

  getActiveOrder() async {
    try {
      print("calling get active order");
      var request = await ApiClient.employeeStoreEmployeeOrdersActiveOrderGet();
      print("activeOrder: ${request.body?.data}");
      activeOrder.value = request.body?.data ??
          EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data();

      canCount.value = (activeOrder.value?.employeeOrder ?? []).length;

      if (canCount.value >= 5) {
        crossAxisCount.value = 5;
      } else if (canCount.value == 0) {
        crossAxisCount.value = 1;
      } else {
        crossAxisCount.value = canCount.value;
      }
      update();
    } catch (error, stacktrace) {
      print("error: ${error}");
      print("stacktrace: ${stacktrace}");
    }
  }

  Future<void> scanQR(mounted) async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    print("barcodeScanRes: ${barcodeScanRes}");
    try {
      var data = qrMetaDataFromJson(barcodeScanRes);
      print("barcodeScanRes data: ${data}");
      if (data.id != null) {
        addWaterCan(data.id);
      }
    } catch (error) {
      print("erro: ${error}");
    }
  }

  addWaterCan(id) async {
    var body = EmployeeStoreEmployeeOrdersPost$RequestBody(watercan: id);

    print("body: ${body.toJson()}");
    var request = await ApiClient.employeeStoreEmployeeOrdersPost(body: body);

    print("request: ${request.body}");

    if (!(request.body?.status ?? false)) {
      Toast.error(request.body?.message);
      return;
    }

    Toast.success(request.body?.message);

    getActiveOrder();
  }

  confirmOrder(id) async {
    var request =
        await ApiClient.employeeStoreEmployeeOrdersConfirmPost(order: id);

    if (!(request.body?.status ?? false)) {
      Toast.error(request.body?.message);
      return;
    }

    Toast.success(request.body?.message);
    Get.back();
  }
}
