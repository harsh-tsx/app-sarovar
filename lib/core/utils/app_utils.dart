import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/get_storage.dart';
import 'package:flutter/foundation.dart';

String? getToken() {
  var token = getString("app_token");

  return token ?? null;
}

Future<void> setToken(value) async {
  await setData("app_token", value);
}

bool isTutorialCompleted() {
  var tutorial = getBool("tutorial_v1");

  return tutorial ?? false;
}

Future<void> setTutorialCompleted(value) async {
  await setData("tutorial_v1", value);
}

bool isTutorial1Completed() {
  var tutorial = getBool("tutorial1_v1");

  return tutorial ?? false;
}

Future<void> setTutorial1Completed(value) async {
  await setData("tutorial1_v1", value);
}

String? getUserName() {
  return getData("user_name");
}

void setUserName(value) {
  setData("user_name", value);
}

void clearToken() {
  deleteData("app_token");
}

void logout() {
  clearToken();
  setTutorialCompleted(false);
  setTutorial1Completed(false);
  Get.offAllNamed(AppRoutes.splashthreeScreen);
}

handleObjectChange(obj, key, value) {
  for (var _key in obj.keys) {
    if (_key == describeEnum(key)) {
      obj[_key] = value;
    }
  }

  return obj;
}

T isControllerRegistered<T>(_controller) {
  T controller;
  bool test = Get.isRegistered<T>();
  print("PREFIX ${T} is ${test}");

  if (test) {
    controller = Get.find<T>();
  } else {
    controller = Get.put(_controller);
  }

  return controller;
}
