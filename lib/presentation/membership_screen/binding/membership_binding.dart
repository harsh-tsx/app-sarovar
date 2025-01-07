import '../controller/membership_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MembershipScreen.
///
/// This class ensures that the MembershipController is created when the
/// MembershipScreen is first loaded.
class MembershipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MembershipController());
  }
}
