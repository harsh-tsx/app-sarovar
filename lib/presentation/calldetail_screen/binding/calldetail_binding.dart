import '../controller/calldetail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatdetailScreen.
///
/// This class ensures that the ChatdetailController is created when the
/// ChatdetailScreen is first loaded.
class CalldetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalldetailController());
  }
}
