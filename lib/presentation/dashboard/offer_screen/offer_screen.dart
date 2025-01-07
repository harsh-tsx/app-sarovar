import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget {
  OfferScreen({super.key});

  var list = ["The World Cup", "Asian Cup", "Africa Cup of Nations"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.pageBg,
        appBar: AppBar(
          // leadingWidth: SizeUtils.width.percent(70),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          centerTitle: true,
          title: Text(
            'Offers',
            style: theme.textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.normal,
              fontSize: 20.fSize,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // _buildAppBar(),

              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: SizeUtils.width.percent(40) / 220.h),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 10.w),
                          height: (250.h).percent(50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            gradient: LinearGradient(
                              colors: [Color(0xff2D8AFF), Color(0xff73B1FF)],
                              stops: [0, 1],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "25 % Discount Voucher on AC",
                                style: TextStyle(
                                  fontSize: 18.fSize,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(22, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  "Valid  | Oct 26, 2024",
                                  style: TextStyle(
                                    fontSize: 10.fSize,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 10.w),
                          height: (250.h).percent(50),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "10% discount voucher",
                                style: TextStyle(
                                  fontSize: 14.fSize,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "1.000 Points",
                                style: TextStyle(
                                  fontSize: 12.fSize,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFCB351),
                                ),
                              ),
                              CustomOutlinedButton(
                                text: "Redeem",
                                height: 40.h,
                                buttonStyle: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  side: BorderSide(
                                    color: appTheme.primaryYellow,
                                    width: 1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                decoration: BoxDecoration(),
                                buttonTextStyle: TextStyle(
                                  color: Color(0xff31493B),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
