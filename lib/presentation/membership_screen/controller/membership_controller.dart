import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/presentation/membership_screen/models/membership_model.dart';

/// A controller class for the MembershipScreen.
///
/// This class manages the state of the MembershipScreen, including the
/// current membershipModelObj
class MembershipController extends GetxController {
  Rx<MembershipModel> membershipModelObj = MembershipModel().obs;

  Rx<bool> checkmark = false.obs;
}
