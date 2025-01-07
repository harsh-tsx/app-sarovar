import '../controller/chatdetail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatdetailScreen.
///
/// This class ensures that the ChatdetailController is created when the
/// ChatdetailScreen is first loaded.
class ChatdetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatdetailController());
  }
}
