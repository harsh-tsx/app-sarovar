import 'package:app_1point2_store/presentation/dashboard/add_order/add_order.dart';
import 'package:app_1point2_store/presentation/dashboard/can_out_screen/can_out_screen.dart';
import 'package:app_1point2_store/presentation/dashboard/dashboard.dart';
import 'package:app_1point2_store/presentation/dashboard/dashboard_binding.dart';
import 'package:app_1point2_store/presentation/dashboard/qr_scanner_screen/qr_scanner_screen.dart';
import 'package:get/get.dart';

import '../presentation/dashboard/home_screen/binding/home_binding.dart';
import '../presentation/dashboard/home_screen/home_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/splashthree_screen/binding/splashthree_binding.dart';
import '../presentation/splashthree_screen/splashthree_screen.dart';

class AppRoutes {
  static const String canOutScreen = "/can_out_screen";
  static const String qrScanScreen = "/qr_scan_screen";
  static const String addOrderScreen = "/addorder_screen";
  static const String splashthreeScreen = '/splashthree_screen';
  static const String homeScreen = '/home_screen';
  static const String initialRoute = '/initialRoute';
  static const String loginScreen = '/login_screen';
  static const String dashboard = '/dashboard';

  static List<GetPage> pages = [
    GetPage(
      name: canOutScreen,
      page: () => CanOutScreen(),
    ),
    GetPage(
      name: qrScanScreen,
      page: () => QrScannerScreen(),
    ),
    GetPage(
      name: addOrderScreen,
      page: () => AddOrderScreen(),
    ),
    GetPage(
      name: splashthreeScreen,
      page: () => SplashthreeScreen(),
      bindings: [
        SplashthreeBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashthreeScreen(),
      bindings: [
        SplashthreeBinding(),
      ],
    ),

    /** USED IN APP */
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: dashboard,
      page: () => Dashboard(),
      bindings: [
        DashboardBinding(),
      ],
    ),
  ];
}
