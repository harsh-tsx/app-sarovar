import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/presentation/splashtwo_screen/models/splashtwo_model.dart';

/// A controller class for the SplashtwoScreen.
///
/// This class manages the state of the SplashtwoScreen, including the
/// current splashtwoModelObj
class SplashtwoController extends GetxController {
  Rx<SplashtwoModel> splashtwoModelObj = SplashtwoModel().obs;
}
