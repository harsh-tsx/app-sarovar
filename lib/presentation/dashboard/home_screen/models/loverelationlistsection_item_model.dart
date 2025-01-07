import '../../../../core/app_export.dart';

/// This class is used in the [loverelationlistsection_item_widget] screen.
class LoverelationlistsectionItemModel {
  LoverelationlistsectionItemModel({
    this.loveRelation,
    this.loveRelation1,
    this.id,
  }) {
    loveRelation = loveRelation ?? Rx(ImageConstant.imgPlay);
    loveRelation1 = loveRelation1 ?? Rx("Love & Relation");
    id = id ?? Rx("");
  }

  Rx<String>? loveRelation;

  Rx<String>? loveRelation1;

  Rx<String>? id;
}
