import 'dart:async';

import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/Toast.dart';
import 'package:app_1point2_store/data/apiClient/api_client.dart';
import 'package:app_1point2_store/swagger_generated_code/store_api.swagger.dart';
import 'package:geolocator/geolocator.dart';

class AuthController extends GetxController {
  Rx<EmployeeStoreAuthMeGet$Response$Data> user = EmployeeStoreAuthMeGet$Response$Data().obs;

  var distance = 0.0.obs;
  var outSide = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    me();
  }

  me() async {
    try {
      var request = await ApiClient.employeeStoreAuthMeGet();
      print("me request: ${request.body?.data}");
      if (!(request.body?.status ?? false)) {
        return;
      }

      user.value = request.body?.data ?? EmployeeStoreAuthMeGet$Response$Data();

      update();
      print("me request: ${user.value}");
      getCurrentLocation();
    } catch (error, stackTrace) {
      print("error: ${error}");
      print(stackTrace);
    }
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  getCurrentLocation() async {
    var location = await _determinePosition();

    print("location: ${location.latitude}, ${location.longitude}");

    getLocationStream();
  }

  getLocationStream() async {
    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.best,
      distanceFilter: 0,
    );
    Geolocator.getPositionStream(locationSettings: locationSettings).listen((Position? position) async {
      print(position == null
          ? 'Unknown'
          : 'Current - ${position.latitude.toString()}, ${position.longitude.toString()} Store - ${user.value.store?.coordinate.lat} ${user.value.store?.coordinate.long}');

      distance.value = double.parse((await Geolocator.distanceBetween(
              position?.latitude ?? 0.0,
              position?.longitude ?? 0.0,
              user.value.store?.coordinate.lat ?? 0.0,
              user.value.store?.coordinate.long ?? 0.0))
          .toStringAsFixed(1));
      print("distance: ${distance.value}");
      if (distance.value <= 10) {
        outSide.value = false;
      } else {
        outSide.value = true;
      }
      update();
    });
  }
}
