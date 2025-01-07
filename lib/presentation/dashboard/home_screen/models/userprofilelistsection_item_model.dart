import '../../../../core/app_export.dart';

/// This class is used in the [userprofilelistsection_item_widget] screen.
class OnlineAstrologerModel {
  OnlineAstrologerModel({
    this.play,
    this.circleImage,
    this.ratingText,
    this.nameText,
    this.experienceText,
    this.image1,
    this.image2,
    this.image3,
    this.id,
  }) {
    play = play ?? Rx(ImageConstant.imgPlayLightGreenA700);
    circleImage = circleImage ?? Rx(ImageConstant.imgRectangle76);
    ratingText = ratingText ?? Rx("5");
    nameText = nameText ?? Rx("Astro Vivek K");
    experienceText = experienceText ?? Rx("Exp: 3 Years");
    image1 = Rx(ImageConstant.messageBuble);
    image2 = Rx(ImageConstant.phone);
    image3 = Rx(ImageConstant.imgGroup38);
    id = id ?? Rx("");
  }

  Rx<String>? play;

  Rx<String>? circleImage;

  Rx<String>? ratingText;

  Rx<String>? nameText;

  Rx<String>? experienceText;

  Rx<String>? image1;

  Rx<String>? image2;

  Rx<String>? image3;

  Rx<String>? id;
}
