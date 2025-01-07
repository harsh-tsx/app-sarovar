import '../../../../core/app_export.dart';

/// This class is used in the [seventynine_item_widget] screen.
class HoroScopeSign {
  HoroScopeSign({
    this.userImage,
    this.userName,
    this.id,
    this.route,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgLeo);
    userName = userName ?? Rx("Leo");
    id = id ?? Rx("");
    route = route ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userName;

  Rx<String>? id;

  Rx<String>? route;
}
