import 'dart:io';

import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/presentation/dashboard/add_order/add_order.model.dart';
import 'package:app_1point2_store/presentation/dashboard/home_screen/controller/home_controller.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart' as _dio;

var resonList = [
  OrderReason("Traffic", Icons.traffic_outlined),
  OrderReason("Water flood", Icons.flood_outlined),
  OrderReason("Vehicle break down ", Icons.fire_truck_outlined),
];

class OrderReason {
  final String text;
  final IconData icon;
  OrderReason(this.text, this.icon);
}

class AddOrderController extends AuthController {
  var canCount = 0.obs;
  var crossAxisCount = 1.obs;
  var activeOrder = EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data().obs;
  var activeReturnOrder = EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data().obs;
  var homeController = isControllerRegistered<HomeController>(HomeController());
  var loading = true.obs;
  var remark = TextEditingController();
  var remarkOption = "".obs;
  Rx<XFile?> photo = Rx(null);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("hello");

    getActiveOrder();
    getActiveReturnOrder();
  }

  getActiveOrder() async {
    try {
      loading.value = true;
      print("calling get active order");
      var request = await ApiClient.employeeStoreEmployeeOrdersActiveOrderGet();
      print("activeOrder: ${request.body?.data}");
      activeOrder.value = request.body?.data ?? EmployeeStoreEmployeeOrdersActiveOrderGet$Response$Data();

      canCount.value = (activeOrder.value.employeeOrder ?? []).length;

      if (canCount.value >= 5) {
        crossAxisCount.value = 5;
      } else if (canCount.value == 0) {
        crossAxisCount.value = 1;
      } else {
        crossAxisCount.value = canCount.value;
      }
      loading.value = false;
      update();
    } catch (error, stacktrace) {
      loading.value = false;
      print("error: ${error}");
      print("stacktrace: ${stacktrace}");
    }
  }

  getActiveReturnOrder() async {
    try {
      loading.value = true;
      print("calling get active return order");
      var request = await ApiClient.employeeStoreEmployeeOrdersActiveReturnOrderGet();
      print("activeReturnOrder: ${request.body?.data}");
      activeReturnOrder.value = request.body?.data ?? EmployeeStoreEmployeeOrdersActiveReturnOrderGet$Response$Data();

      canCount.value = (activeOrder.value.employeeOrder ?? []).length;

      if (canCount.value >= 5) {
        crossAxisCount.value = 5;
      } else if (canCount.value == 0) {
        crossAxisCount.value = 1;
      } else {
        crossAxisCount.value = canCount.value;
      }
      loading.value = false;
      update();
    } catch (error, stacktrace) {
      loading.value = false;
      print("error: ${error}");
      print("stacktrace: ${stacktrace}");
    }
  }

  Future<void> scanQR(mounted, [returnOrder = false]) async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.QR);
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
        if (returnOrder) {
          returnWaterCan(data.id);
        } else {
          addWaterCan(data.id);
        }
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

  returnWaterCan(id) async {
    var body = EmployeeStoreEmployeeOrdersPut$RequestBody(watercan: id);

    print("body: ${body.toJson()}");
    var request = await ApiClient.employeeStoreEmployeeOrdersPut(body: body);

    print("request: ${request.body}");

    if (!(request.body?.status ?? false)) {
      Toast.error(request.body?.message);
      return;
    }

    Toast.success(request.body?.message);

    getActiveReturnOrder()();
  }

  confirmOrder(id, returnId) async {
    Toast.loading("submitting....");

    if (this.outSide.value) {
      if (activeOrder.value.id != null) {
        await submitConfirmRequest(id);
      }
      if (activeReturnOrder.value.id != null) {
        submitReturnConfirmRequest(returnId);
      }
    } else {
      var request = await ApiClient.employeeStoreEmployeeOrdersConfirmPost(
        order: id,
      );

      if (!(request.body?.status ?? false)) {
        Toast.error(request.body?.message);
        return;
      }

      if (activeReturnOrder.value.id != null) {
        var request = await ApiClient.employeeStoreEmployeeOrdersConfirmPut(
          order: returnId,
        );

        if (!(request.body?.status ?? false)) {
          Toast.error(request.body?.message);
          return;
        }
      }

      homeController.getHomeDashboardData(DateTime.now());
      Toast.success(request.body?.message);
      Get.back(closeOverlays: true);
    }
  }

  submitConfirmRequest(id) async {
    ///MultiPart request

    try {
      var file = photo.value;

      var form = new _dio.FormData.fromMap(
          {"IMAGES": await _dio.MultipartFile.fromFile(file?.path ?? "", filename: file?.name ?? "")});

      var response = await _dio.Dio().post(
          "https://api.1point2percent.com/employee-store/employee-orders/confirm?order=${id}&remark=${remarkOption.value.isEmpty ? remark.text : remarkOption.value}&SCANNEDOUTSIDE=${this.outSide.value ? "true" : "false"}",
          data: form,
          options: _dio.Options(
            contentType: "multipart/form-data",
            headers: {"Authorization": "Bearer ${getToken()}", "Content-type": "multipart/form-data"},
          ));
      print("response: ${response.data}");

      if (response.data != null) {
        if (response.data['status'] == true) {
          if (activeReturnOrder.value.id == null) {
            homeController.getHomeDashboardData(DateTime.now());
            Toast.success(response.data['message']);
            Get.back(closeOverlays: true);
          }
        } else {
          Toast.error("IN - " + response.data['message']);
        }
      }
    } catch (error, stackTrace) {
      print("error: ${error}");
      print("stackTrace: ${stackTrace}");
    }
  }

  submitReturnConfirmRequest(id) async {
    ///MultiPart request

    try {
      var file = photo.value;

      var form = new _dio.FormData.fromMap(
          {"IMAGES": await _dio.MultipartFile.fromFile(file?.path ?? "", filename: file?.name ?? "")});

      var response = await _dio.Dio().put(
          "https://api.1point2percent.com/employee-store/employee-orders/confirm?order=${id}&remark=${remarkOption.value.isEmpty ? remark.text : remarkOption.value}&SCANNEDOUTSIDE=${this.outSide.value ? "true" : "false"}",
          data: form,
          options: _dio.Options(
            contentType: "multipart/form-data",
            headers: {"Authorization": "Bearer ${getToken()}", "Content-type": "multipart/form-data"},
          ));
      print("response: ${response.data}");

      if (response.data != null) {
        if (response.data['status'] == true) {
          homeController.getHomeDashboardData(DateTime.now());
          Toast.success(response.data['message']);
          Get.back(closeOverlays: true);
        } else {
          Toast.error("OUT - " + response.data['message']);
        }
      }
    } catch (error, stackTrace) {
      print("error: ${error}");
      print("stackTrace: ${stackTrace}");
    }
  }

  handleRemarkOptionChange(value) {
    remarkOption.value = value;
    update();
  }

  handleImage() async {
    final ImagePicker picker = ImagePicker();

    var xFile = await picker.pickImage(source: ImageSource.camera);

    var pathList = xFile?.path.split(".");
    var ext = pathList?[(pathList.length) - 1];
    var targetPath = await getExampleFilePath(ext);

    print("photo.value.mimeType: ${ext}");

    photo.value = await FlutterImageCompress.compressAndGetFile(
      xFile?.path ?? "",
      targetPath,
      quality: 50,
      // rotate: 180,
    );

    print(await photo.value?.length());

    update();
  }

  File createFile(String path) {
    final file = File(path);
    if (!file.existsSync()) {
      file.createSync(recursive: true);
    }
    return file;
  }

  Future<String> getExampleFilePath(ext) async {
    final dir = await path_provider.getTemporaryDirectory();
    final File file = createFile('${dir.absolute.path}/test.${ext}');
    file.createSync(recursive: true);
    return file.absolute.path;
  }
}
