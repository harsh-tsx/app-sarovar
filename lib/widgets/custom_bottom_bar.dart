import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHomePrimary,
      activeIcon: ImageConstant.imgNavHomePrimary,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavServicesGray50001,
      activeIcon: ImageConstant.imgNavServicesGray50001,
      title: "lbl_services".tr,
      type: BottomBarEnum.Services,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavEcommerce,
      activeIcon: ImageConstant.imgNavEcommerce,
      title: "lbl_ecommerce".tr,
      type: BottomBarEnum.Ecommerce,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavChatGray50001,
      activeIcon: ImageConstant.imgNavChatGray50001,
      title: "lbl_chat".tr,
      type: BottomBarEnum.Chat,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      decoration: BoxDecoration(
        color: appTheme.redA700,
        // boxShadow: [
        //   BoxShadow(
        //     color: theme.colorScheme.primary.withOpacity(0.15),
        //     spreadRadius: 2,
        //     blurRadius: 2,
        //     offset: Offset(
        //       0,
        //       -6,
        //     ),
        //   ),
        // ],
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Container(
                width: Get.width / 4,
                decoration: AppDecoration.fillOnError,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: bottomMenuList[index].icon,
                      height: 44,
                      width: 34,
                      color: appTheme.gray50001,
                      margin: EdgeInsets.only(top: 8),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4,
                        bottom: 11,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.titleMediumGray50001.copyWith(
                          color: appTheme.gray50001,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              activeIcon: Container(
                width: Get.width / 4,
                decoration: AppDecoration.fillOnError,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: bottomMenuList[index].icon,
                      height: 44,
                      width: 34,
                      color: appTheme.gray50001,
                      margin: EdgeInsets.only(top: 8),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 2,
                        bottom: 8,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.titleMediumGray50001.copyWith(
                          color: appTheme.gray50001,
                        ),
                      ),
                    ),
                    Container(
                      height: 5,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Services,
  Ecommerce,
  Chat,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
