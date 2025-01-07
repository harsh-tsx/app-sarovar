import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [membership_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MembershipModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(dynamicText: "Ad-free Experience".obs, text: "-".obs),
    UserprofileItemModel(
        dynamicText: "Advanced AI Recommendations".obs, text: "-".obs),
    UserprofileItemModel(
        dynamicText: "Enhanced Video Content".obs, text: "-".obs),
    UserprofileItemModel(
        dynamicText: "Unlimited video highlights".obs, text: "-".obs),
    UserprofileItemModel(
        dynamicText: "Unlimited bookmarking".obs, text: "-".obs),
    UserprofileItemModel(dynamicText: "Unlimited Tabs".obs, text: "-".obs),
    UserprofileItemModel(
        dynamicText: "Priority customer support".obs, text: "-".obs),
    UserprofileItemModel(
        dynamicText: "Early access to new features".obs, text: "-".obs),
  ]);
}
