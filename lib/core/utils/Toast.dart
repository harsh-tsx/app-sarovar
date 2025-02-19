import 'package:app_1point2_store/core/app_export.dart';
import 'package:flutter/material.dart';

class Toast {
  static custom(
    String? text,
    IconData icon,
    Color color,
  ) {
    return Get.snackbar(
      '',
      '',
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.transparent,
      animationDuration: Duration(milliseconds: 300),

      barBlur: 0,
      // overlayBlur: 0,
      borderRadius: 0.0,
      margin: EdgeInsets.all(0.0),
      messageText: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 47),
        child: Container(
          width: 100,
          padding: EdgeInsets.symmetric(vertical: 10),
          // height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white, boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 138, 138, 138),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.1, 0.1),
            )
          ]),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(width: 10),
                Icon(
                  icon,
                  color: color,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    text ?? "Error",
                    style: TextStyle(
                        color: Colors.black, fontSize: 14, overflow: TextOverflow.visible, fontWeight: FontWeight.w600),
                  ),
                ),
              ]),
        ),
      ),
      duration: Duration(seconds: 3),
    );
  }

  static success(String? text) async {
    if (Get.isSnackbarOpen) {
      await Get.closeCurrentSnackbar();
    }

    return custom(text, Icons.check, Colors.green);
  }

  static error(String? text) async {
    if (Get.isSnackbarOpen) {
      await Get.closeCurrentSnackbar();
    }
    return custom(text, Icons.close, Colors.red);
  }

  static loading(String? text) async {
    if (Get.isSnackbarOpen) {
      await Get.closeCurrentSnackbar();
    }
    return Get.snackbar(
      '',
      '',
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.transparent,
      animationDuration: Duration(milliseconds: 300),

      barBlur: 0,
      // overlayBlur: 0,
      borderRadius: 0.0,
      margin: EdgeInsets.all(0.0),
      messageText: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 47),
        child: Container(
          width: 100,
          padding: EdgeInsets.symmetric(vertical: 10),
          // height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white, boxShadow: [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 0.0),
            )
          ]),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(width: 10),
                CustomImageView(
                  imagePath: ImageConstant.hourGlass,
                  width: 30,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    text ?? "Error",
                    style: TextStyle(
                        color: Colors.black, fontSize: 14, overflow: TextOverflow.visible, fontWeight: FontWeight.w600),
                  ),
                ),
              ]),
        ),
      ),
      duration: Duration(hours: 3),
    );
  }
}
