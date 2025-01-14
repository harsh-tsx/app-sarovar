import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/presentation/dashboard/can_out_screen/can_out_screen.controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CanOutScreen extends StatefulWidget {
  const CanOutScreen({super.key});

  @override
  State<CanOutScreen> createState() => _CanOutScreenState();
}

class _CanOutScreenState extends State<CanOutScreen> {
  var controller =
      isControllerRegistered<CanOutScreenController>(CanOutScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE4DABA),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Today's out",
              style: TextStyle(
                fontSize: 20.fSize,
              ),
            ),
            Text(
              "Number of can returned:",
              style: TextStyle(
                fontSize: 24.fSize,
              ),
            ),
            SizedBox(
              width: SizeUtils.width.percent(50),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.fSize,
                ),
                controller: controller.waterCans,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: 'Enter Number',
                  hintText: 'Enter Number',
                ),
              ),
            ),
            SizedBox(height: 24.h),
            SizedBox(
              width: SizeUtils.width.percent(60),
              child: ElevatedButton(
                onPressed: () {
                  controller.handleSubmit();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: appTheme.black900,
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xff375DFB),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 30.h),
                ),
                child: Text(
                  'Submit Request',
                  style: GoogleFonts.comfortaa(color: theme.primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
