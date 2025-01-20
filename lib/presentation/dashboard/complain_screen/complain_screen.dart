import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';

class ComplaintScreen extends StatelessWidget {
  const ComplaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.pageBg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Coming Soon...",
              style: TextStyle(
                fontSize: 16.fSize,
              ),
            )
          ],
        ),
      ),
    );
  }
}
