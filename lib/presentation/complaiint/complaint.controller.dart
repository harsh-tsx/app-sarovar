import 'package:app_1point2_store/configs/env.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/presentation/dashboard/add_order/add_order.controller.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as _dio;

class ComplaintController extends AuthController {
  var currentTab = "IN".obs;

  var orderId = "".obs;
  var orderWaterCans = 0.obs;
  var complaintType = "".obs;
  var watercans = TextEditingController();
  var description = TextEditingController();
  var images = <XFile?>[].obs;

  var complaints = <EmployeeStoreStoreComplaintGet$Response$Data$Item>[].obs;
  var page = 0.obs;
  var size = 10.obs;
  var isLoading = false.obs;

  var isSubmitting = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getComplaints(0);
  }

  handleCurrentTabChange(value) {
    currentTab.value = value;
    update();
  }

  getComplaints([int? givenPage]) async {
    if (givenPage != null && givenPage < page.value || givenPage == 0) {
      // clear the list
      complaints.clear();
    }
    page.value = givenPage ?? page.value;

    var request =
        await ApiClient.employeeStoreStoreComplaintGet(page: page.value.toString(), size: size.value.toString());

    if (!(request.body?.status ?? false)) {
      isLoading.value = false;
      Toast.error(request?.body?.message);

      return;
    }

    complaints.addAll(request.body?.data ?? []);
    isLoading.value = false;
    update();
  }

  handleImage() async {
    final ImagePicker picker = ImagePicker();

    var xFile = await picker.pickImage(source: ImageSource.camera);

    var pathList = xFile?.path.split(".");
    var ext = pathList?[(pathList.length) - 1];
    var targetPath = await getExampleFilePath(ext);

    print("photo.value.mimeType: ${ext}");

    final photo = await FlutterImageCompress.compressAndGetFile(
      xFile?.path ?? "",
      targetPath,
      quality: 50,
    );

    images.add(photo);

    update();
  }

  deleteImage(index) {
    images.removeAt(index);
    update();
  }

  handleSubmit() async {
    if (orderId.value.isEmpty) {
      Toast.error("Order Id is required!");
      return;
    }

    if (complaintType.value.isEmpty) {
      Toast.error("Complaint type is required!");
      return;
    }

    if (watercans.text.isEmpty) {
      Toast.error("Number of can is required!");
      return;
    }

    if (description.text.isEmpty) {
      Toast.error("Description is required!");
      return;
    }

    if (images.isEmpty) {
      Toast.error("Upload images!");
      return;
    }
    isSubmitting.value = true;

    try {
      var imageToBeUpload = [];

      for (var file in images) {
        var image = await _dio.MultipartFile.fromFile(file?.path ?? "", filename: file?.name ?? "");
        imageToBeUpload.add(image);
      }

      var form = new _dio.FormData.fromMap({
        "images": imageToBeUpload,
        "order": orderId.value,
        "type": complaintType.value,
        "watercans": watercans.text,
        "description": description.text,
      });

      var response = await _dio.Dio().post("${Env.baseUrl}/employee-store/store-complaint",
          data: form,
          options: _dio.Options(
            contentType: "multipart/form-data",
            headers: {"Authorization": "Bearer ${getToken()}", "Content-type": "multipart/form-data"},
          ));
      print("response: ${response.data}");

      if (response.data != null) {
        if (response.data['status'] == true) {
          Toast.success(response.data['message']);
          orderId.value = "";
          images.clear();
          complaintType.value = "";
          watercans.clear();
          description.clear();
          isSubmitting.value = false;
          getComplaints(0);
        } else {
          Toast.error("Ticket - " + response.data['message']);
          isSubmitting.value = false;
        }
      }
    } catch (error, stackTrace) {
      isSubmitting.value = false;
      print("error: ${error}");
      print("stackTrace: ${stackTrace}");
    }
  }
}
