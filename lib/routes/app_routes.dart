import 'package:app_1point2_store/presentation/dashboard/add_order/add_order.dart';
import 'package:app_1point2_store/presentation/dashboard/dashboard.dart';
import 'package:app_1point2_store/presentation/dashboard/dashboard_binding.dart';
import 'package:app_1point2_store/presentation/dashboard/offer_screen/offer_screen.dart';
import 'package:app_1point2_store/presentation/history_screen/history_screen.dart';
import 'package:app_1point2_store/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:app_1point2_store/presentation/redeem_screen/redeem_screen.dart';
import 'package:app_1point2_store/presentation/signin_options_screen/signin_options_binding.dart';
import 'package:app_1point2_store/presentation/signin_options_screen/signin_options_screen.dart';
import 'package:app_1point2_store/presentation/used_voucher_screen/used_voucher_screen.dart';
import 'package:app_1point2_store/presentation/welcome_screen/welcome_screen.dart';
import 'package:get/get.dart';

import '../presentation/chatdetail_screen/binding/chatdetail_binding.dart';
import '../presentation/chatdetail_screen/chatdetail_screen.dart';
import '../presentation/dashboard/home_screen/binding/home_binding.dart';
import '../presentation/dashboard/home_screen/home_screen.dart';
import '../presentation/faq_screen/binding/faq_binding.dart';
import '../presentation/faq_screen/faq_screen.dart';
import '../presentation/forgotpassword_screen/binding/forgotpassword_binding.dart';
import '../presentation/forgotpassword_screen/forgotpassword_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/membership_screen/binding/membership_binding.dart';
import '../presentation/membership_screen/membership_screen.dart';
import '../presentation/resetpassword_screen/binding/resetpassword_binding.dart';
import '../presentation/resetpassword_screen/resetpassword_screen.dart';
import '../presentation/splashmain_screen/binding/splashmain_binding.dart';
import '../presentation/splashmain_screen/splashmain_screen.dart';
import '../presentation/splashthree_screen/binding/splashthree_binding.dart';
import '../presentation/splashthree_screen/splashthree_screen.dart';
import '../presentation/splashtwo_screen/binding/splashtwo_binding.dart';
import '../presentation/splashtwo_screen/splashtwo_screen.dart';

class AppRoutes {
  static const String faqScreen = '/faq_screen';

  static const String feedbacksupportScreen = '/feedbacksupport_screen';
  static const String feedbacksupportScreen2 = '/feedbacksupport2_screen';

  static const String chatlistPage = '/chatlist_page';

  static const String chatdetailScreen = '/chatdetail_screen';

  static const String calldetailScreen = '/calldetail_screen';

  static const String myordersScreen = '/myorders_screen';

  static const String membershipScreen = '/membership_screen';

  static const String splashmainScreen = '/splashmain_screen';

  static const String astrologerslistPage = '/astrologerslist_page';

  static const String newsCardScreen = '/news_card_screen';

  static const String astrologersSearchlistPage =
      '/astrologers_search_list_page';

  static const String astrologerslistContainerScreen =
      '/astrologerslist_container_screen';

  static const String splashtwoScreen = '/splashtwo_screen';

  static const String splashthreeScreen = '/splashthree_screen';

  static const String loginwithphoneScreen = '/loginwithphone_screen';

  static const String otpScreen = '/otp_screen';

  static const String select_tournament_screen = '/select_tournament_screen';

  static const String profileScreen = '/profile_screen';

  static const String registerScreen = '/register_screen';

  static const String loginScreen = '/login_screen';

  static const String changePaswordScreen = '/change_password_screen';

  static const String signUpScreen = '/signup_screen';

  static const String forgotpasswordScreen = '/forgotpassword_screen';

  static const String myProfileScreen = '/my_profile_screen';

  static const String resetpasswordScreen = '/resetpassword_screen';

  static const String newsDetailScreen = '/news_detail_screen';

  static const String editprofileScreen = '/editprofile_screen';

  static const String homeScreen = '/home_screen';
  static const String matchesScreen = '/matches_screen';
  //
  static const String dashboard = '/dashboard';

  static const String astrologerdetailScreen = '/astrologerdetail_screen';

  static const String productlistScreen = '/productlist_screen';

  static const String productdetailScreen = '/productdetail_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String cartScreen = '/cart_screen';

  static const String servicesScreen = '/services_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String astrolgerDashScreen = '/astro_dash';

  static const String initialRoute = '/initialRoute';

  static const String signinOptionsRoute = '/signinOptionsRoute';

  static const String initialAstroLogerRoute = '/astrologer_initialRoute';
  static const String myWalletRoute = '/my_wallet_screen';
  static const String dailyHoroscopeRoute = '/daily_horoscope_screen';
  static const String transactionHistoryRoute = "/transaction_history_screen";

  static const String bookMarkScreen = '/bookmark_screen';

  static const String panchangRoute = '/panchang_screen';
  static const String panchangFormRoute = '/panchang_form_screen';

  static const String numerologyRoute = '/numerology_screen';
  static const String numerologyFormRoute = '/numerology_form_screen';

  static const String kundlimatchingRoute = '/kundlimatching_screen';
  static const String kundlimatchingFormRoute = '/kundlimatching_form_screen';

  static const String sadeSatiRoute = '/sadeSati_screen';
  static const String sadeSatiFormRoute = '/sadeSati_form_screen';

  static const String kundliRoute = '/kundli_screen';
  static const String kundliFormRoute = '/kundli_form_screen';

  static const String moonCalendarRoute = '/moonCalendar_screen';
  static const String moonCalendarFormRoute = '/moonCalendar_form_screen';

  static const String welcomeScreen = "/welcome_screen";

  static const String historyScreen = "/history_screen";

  static const String redeemScreen = "/redeem_screen";
  static const String addOrderScreen = "/addorder_screen";

  static const String usedVoucherScreen = "/used_voucher_screen";

  static List<GetPage> pages = [
    GetPage(
      name: faqScreen,
      page: () => FaqScreen(),
      bindings: [
        FaqBinding(),
      ],
    ),
    // GetPage(
    //   name: historyScreen,
    //   page: () => HistoryScreen(),
    // ),
    GetPage(
      name: redeemScreen,
      page: () => RedeemScreen(),
    ),
    GetPage(
      name: addOrderScreen,
      page: () => AddOrderScreen(),
    ),
    GetPage(
      name: usedVoucherScreen,
      page: () => UsedVoucherScreen(),
    ),
    GetPage(
      name: chatdetailScreen,
      page: () => ChatdetailScreen(),
      bindings: [
        ChatdetailBinding(),
      ],
    ),
    GetPage(
      name: membershipScreen,
      page: () => MembershipScreen(),
      bindings: [
        MembershipBinding(),
      ],
    ),
    GetPage(
      name: splashmainScreen,
      page: () => SplashmainScreen(),
      bindings: [
        SplashmainBinding(),
      ],
    ),
    GetPage(
      name: splashtwoScreen,
      page: () => SplashtwoScreen(),
      bindings: [
        SplashtwoBinding(),
      ],
    ),
    GetPage(
      name: splashthreeScreen,
      page: () => SplashthreeScreen(),
      bindings: [
        SplashthreeBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: forgotpasswordScreen,
      page: () => ForgotpasswordScreen(),
      bindings: [
        ForgotpasswordBinding(),
      ],
    ),
    GetPage(
      name: resetpasswordScreen,
      page: () => ResetpasswordScreen(),
      bindings: [
        ResetpasswordBinding(),
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
      name: matchesScreen,
      page: () => OfferScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: myProfileScreen,
      page: () => MyProfileScreen(),
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashthreeScreen(),
      bindings: [
        SplashthreeBinding(),
      ],
    ),
    GetPage(
      name: signinOptionsRoute,
      page: () => SignInOptionsScreen(),
      bindings: [
        SignInOptionsBinding(),
      ],
    ),
    GetPage(
      name: initialAstroLogerRoute,
      page: () => SplashthreeScreen(),
      bindings: [
        SplashthreeBinding(astrologer: true),
      ],
    ),
    GetPage(
      name: dashboard,
      page: () => Dashboard(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
    ),
  ];
}
