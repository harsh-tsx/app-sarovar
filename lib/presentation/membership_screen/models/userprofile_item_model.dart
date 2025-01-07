import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.dynamicText,
    this.text,
    this.id,
  }) {
    dynamicText = dynamicText ?? Rx("Lorem ipsum dolor sit amet");
    text = text ?? Rx("-");
    id = id ?? Rx("");
  }

  Rx<String>? dynamicText;

  Rx<String>? text;

  Rx<String>? id;
}
