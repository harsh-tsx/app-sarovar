import 'package:app_1point2_store/configs/env.dart';

class ImageConstant {
  // Image folder path
  static const imagePath = 'assets/images';

  static String publicUrl(String fileName) {
    print("fileName: ${fileName}");
    if (fileName.startsWith("http")) return fileName;
    var fileUrl = Env.baseUrl + "/public/images/" + fileName;
    return fileUrl;
  }

  /** USED IN APP */
  static String appLogo = 'assets/images/app_logo.png';
  static String bottomCenterIcon = 'assets/images/bottom_center_icon.svg';
  static String homeIcon = 'assets/images/home_icon.svg';
  static String homeIconActive = 'assets/images/home_icon_active.svg';
  static String ftbIcon = 'assets/images/ftbIcon.svg';
  static String ftbIconActive = 'assets/images/ftbIcon_active.svg';
  static String catelogueIcon = 'assets/images/catalogue.svg';
  static String catelogueIconActive = 'assets/images/catalogue_active.svg';
  static String tabsIcon = 'assets/images/tabsIcon.svg';
  static String tabsIconActive = 'assets/images/tabsIcon_active.svg';
  static String can = 'assets/images/can.png';
  static String emptyCan = 'assets/images/empty_can.png';
  static String hourGlass = 'assets/images/hourglass.gif';
  static String pageBg = 'assets/images/page_bg.png';
  static String camera = 'assets/images/camera.svg';
}
