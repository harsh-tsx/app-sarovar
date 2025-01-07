import '../../../../core/app_export.dart';

/// This class is used in the [vivekcardlistsection_item_widget] screen.
class VivekcardlistsectionItemModel {
  VivekcardlistsectionItemModel({
    this.userImage,
    this.ratingText,
    this.nameText,
    this.timeText,
    this.astroImage,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.astrologer);
    ratingText = ratingText ?? Rx("5");
    nameText = nameText ?? Rx("Astro Acharya");
    timeText = timeText ?? Rx("30/min");
    astroImage = astroImage ?? Rx(ImageConstant.imgGroupOnerror);
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? ratingText;

  Rx<String>? nameText;

  Rx<String>? timeText;

  Rx<String>? astroImage;

  Rx<String>? id;
}
