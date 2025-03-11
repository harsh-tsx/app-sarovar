import 'dart:async';

import 'package:app_1point2_store/configs/env.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/core/utils/api_client.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/get_storage.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/presentation/login_screen/login_screen.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restart_app/restart_app.dart';

class LoginController extends GetxController {
  var id = TextEditingController();
  var phoneCode = "+91".obs;
  var password = TextEditingController();
  var rememberMe = false.obs;
  var envList = <EmployeeStoreAuthEnvGet$Response$Data$Item>[].obs;
  Timer? timer;

  var showPassword = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getEnvList();
  }

  onSubmit() async {
    try {
      Toast.loading("Logging you in");
      var request = await ApiClient.employeeStoreAuthLoginPost(
          body: EmployeeStoreAuthLoginPost$RequestBody(id: id.text, password: password.text));
      print("MobileNUmber: ${id.text}");
      if (!(request.body?.status ?? false)) {
        Toast.error("${request.body?.message}");
        return;
      }

      Toast.success(request.body?.message ?? "");
      print("response.statusCode: login api token: ${request.body?.data?.token}");
      await setToken("${request.body?.data?.token}");
      print("response.statusCode: getToken: ${getToken()} ");
      Get.offAllNamed(AppRoutes.dashboard);
    } catch (err, s) {
      Toast.error("${err}");

      print(err);
      print(s);
    }
  }

  forgotPassword() async {}

  getEnvList() async {
    envList.clear();
    var request = await ApiClient.employeeStoreAuthEnvGet();
    print("request: ${request.body?.data}");
    if (!(request.body?.status ?? false)) {
      return;
    }
    envList.addAll(request.body?.data ?? []);
    update();
  }

  handleTimer(val) {
    timer = Timer(Duration(seconds: 5), () {
      // time duration
      // your function here
      Get.dialog(
          barrierDismissible: true,
          barrierColor: Colors.black87,
          Dialog(
            backgroundColor: Colors.transparent,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Env List",
                          style: GoogleFonts.poppins(
                            fontSize: 18.fSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Obx(
                          () => ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var item = envList[index];
                              var isSelected = item.name == Env.name;
                              return ListTile(
                                onTap: () {},
                                title: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        await setData("env_base_url", item.url);
                                        await setData("env_name", item.name);
                                        Env.baseUrl = item.url;
                                        Env.name = item.name;
                                        Restart.restartApp(
                                          /// In Web Platform, Fill webOrigin only when your new origin is different than the app's origin
                                          // webOrigin: 'http://example.com',

                                          // Customizing the restart notification message (only needed on iOS)
                                          notificationTitle: 'Restarting App',
                                          notificationBody: 'Please tap here to open the app again.',
                                        );
                                      },
                                      icon: Icon(isSelected ? Icons.check : Icons.circle_outlined),
                                      color: isSelected ? Colors.greenAccent : null,
                                    ),
                                    Text("${item.name}"),
                                  ],
                                ),
                              );
                            },
                            itemCount: envList.length,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
    });
  }

  cancelTimer() {
    timer?.cancel();
  }
}
