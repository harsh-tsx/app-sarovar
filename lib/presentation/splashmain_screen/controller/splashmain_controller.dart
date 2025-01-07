import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/presentation/splashmain_screen/models/splashmain_model.dart';

/// A controller class for the SplashmainScreen.
///
/// This class manages the state of the SplashmainScreen, including the
/// current splashmainModelObj
class SplashmainController extends GetxController {
  Rx<SplashmainModel> splashmainModelObj = SplashmainModel().obs;
}
