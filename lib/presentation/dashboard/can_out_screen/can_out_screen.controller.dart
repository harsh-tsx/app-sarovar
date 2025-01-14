import 'package:app_1point2_store/core/controllers/auth.controller.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';
import 'package:flutter/widgets.dart';

class CanOutScreenController extends AuthController {
  TextEditingController waterCans = TextEditingController();

  handleSubmit() async {
    Toast.loading("returning...");
    var request = await ApiClient.employeeStoreEmployeeOrdersOutPost(
        body: EmployeeStoreEmployeeOrdersOutPost$RequestBody(
            watercans: double.parse(waterCans.text)));

    if (!(request.body?.status ?? false)) {
      Toast.error("${request.body?.message}");
      return;
    }
    Toast.success(request.body?.message);
    waterCans.clear();
    update();
  }
}
