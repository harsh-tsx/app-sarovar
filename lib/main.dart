import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';

import 'core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetStorage.init().then(
    (value) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]).then((value) {
        // Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
        // runApp(MyApp());

        runApp(DevicePreview(enabled: !kReleaseMode, builder: (context) => MyApp() // Wrap your app
            ));
      });
    },
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        title: '1.2% Store App',
        initialBinding: InitialBindings(),
        initialRoute: AppRoutes.initialRoute,
        getPages: AppRoutes.pages,
      );
    });
  }
}
