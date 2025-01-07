import 'dart:convert';

import 'package:app_1point2_store/core/utils/app_utils.dart';
import 'package:app_1point2_store/core/utils/types.dart';
import 'package:app_1point2_store/widgets/app_bar/appbar_title.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/widgets/app_bar/custom_app_bar.dart';
import 'package:app_1point2_store/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';
import 'controller/chatdetail_controller.dart';
import 'package:firebase_core/firebase_core.dart';

class ChatdetailScreen extends StatefulWidget {
  const ChatdetailScreen({Key? key}) : super(key: key);

  @override
  State<ChatdetailScreen> createState() => _ChatdetailScreenState();
}

class _ChatdetailScreenState extends State<ChatdetailScreen> {
  var controller =
      isControllerRegistered<ChatdetailController>(ChatdetailController());

  ScrollController chatScrollController = ScrollController();

  var db_prefix = "new_message/v1";

  var chatList = [];

  var showInputBox = false;
  var orderCanclled = false;

  /** Firebase states */
  FirebaseApp? firebaseApp;

  FirebaseDatabase? rtdb;

  var msgFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("GET ARGUMENTS: ${Get.arguments}");

    (() async {
      try {
        // while(!chatScrollController.hasClients || chatScrollController.position.maxScrollExtent <= 0){

        // await Future.delayed(Duration.zero);
        // }
        var orderData = Get.arguments;
        print(orderData['chat_room']['_id']);

        firebaseApp = Firebase.app();

        rtdb = FirebaseDatabase.instanceFor(
            app: firebaseApp!,
            databaseURL:
                'https://astrokoolam-cd0dd-default-rtdb.asia-southeast1.firebasedatabase.app');

        var prefix = db_prefix + "/${orderData['chat_room']['_id']}";
        var order_update_prefix = "order_update/v1/${orderData['_id']}";

        print("prefix: ${prefix}");
        print("prefix order_update_prefix: ${order_update_prefix}");

        var item = await rtdb!.ref((prefix)).limitToLast(10).get();
        var order_update_item =
            await rtdb!.ref((order_update_prefix)).limitToLast(10).get();

        print("item.value: ${item.children.first.value} \n");

        // var latestItem = jsonDecode(jsonEncode(item.children.first.value));

        var chatListener = rtdb!.ref(prefix);
        var orderUpdatechatListener = rtdb!.ref(order_update_prefix);

        chatListener.onChildAdded.listen((event) {
          print("HELLO MESSAGE RECIEVED FROM CHILD");
          var eventItem = jsonDecode(jsonEncode(event.snapshot.value));
          print("item.value from onChildAdded: ${eventItem} \n");
          setState(() {
            if (eventItem['sender_id'] == orderData['user']) {
              eventItem['mine'] = true;
            } else {
              eventItem['mine'] = false;
            }
            chatList.add(eventItem);

            if (chatScrollController.hasClients) {
              chatScrollController.positions.map(
                (e) {
                  print("e: ${e.maxScrollExtent}");
                },
              ).toList();
              WidgetsBinding.instance.addPostFrameCallback((_) {
                print(
                    "chatScrollController.position.maxScrollExtent: ${chatScrollController.position.maxScrollExtent}");
                chatScrollController.animateTo(
                  chatScrollController.position.maxScrollExtent + 200,
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 300),
                );
              });
            }
          });

          // print("eventItem['timestamp']: ${eventItem['timestamp']}");
          // print("latestItem['timestamp']: ${latestItem['timestamp']}");
          // print("is timestamp less than latest timestamp: ${eventItem['timestamp'] <= latestItem['timestamp']}");
          // if (eventItem['timestamp'] <= latestItem['timestamp']) {
          //   return;
          // }

          // if (eventItem['_id'] != latestItem['_id']) {
          // print("HELLO MESSAGE RECIEVED FROM CHILD");
          // print("item.value from onChildAdded: ${event.snapshot.value} \n");
          // print(
          //     "item.value from onChildAdded _id: ${jsonDecode(jsonEncode(event.snapshot.value))} \n");
          // }

          // for (var key in event.snapshot.children) {
          //   print(key.value);
          // }
        });

        orderUpdatechatListener.onChildAdded.listen((event) {
          print("HELLO MESSAGE RECIEVED FROM CHILD ORDER UPDATE CHILD");
          var eventItem = jsonDecode(jsonEncode(event.snapshot.value));
          print("item.value from onChildAdded: ${eventItem} \n");
          if (eventItem['status'] == "confirmed") {
            setState(() {
              showInputBox = true;
            });
          } else {
            setState(() {
              orderCanclled = true;
            });
          }
        });
      } catch (err) {
        print(err);
      }
    })();
    if (chatScrollController.hasClients) {
      chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // extendBody: true,
        // resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          title: Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 44.h, left: 1.w),
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              AppbarTitle(
                text: "Chat",
                margin: EdgeInsets.only(top: 44.h, left: 10.w),
              ),
            ],
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          // padding: EdgeInsets.only(bottom: 60),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onError,
                appTheme.orange50,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GetBuilder<ChatdetailController>(builder: (_context) {
                  return Container(
                    height: Get.height.percent(75),
                    width: Get.width,
                    child: ListView.builder(
                        controller: chatScrollController,
                        itemBuilder: (context, index) {
                          return Container(
                            width: Get.width,
                            padding: EdgeInsets.all(10.w),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: chatList[index]['mine']
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                              children: [
                                Container(
                                  // margin: EdgeInsets.all(11),
                                  padding: EdgeInsets.all(11),
                                  decoration: chatList[index]['mine']
                                      ? AppDecoration.outlinePrimary2.copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderBL10,
                                        )
                                      : AppDecoration.outlinePrimary1.copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderBL10,
                                        ),
                                  child: Text(
                                    chatList[index]['message'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodySmallPoppinsPrimary,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: chatList.length),
                  );
                }),
                _buildInputColumn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputColumn() {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10,
      ),
      child: showInputBox
          ? CustomTextFormField(
              controller: controller.inputColumnController,
              hintText: "lbl_type_here".tr,
              hintStyle: CustomTextStyles.bodyLargePoppinsGray50001,
              textInputAction: TextInputAction.done,
              focusNode: msgFocusNode,
              suffix: InkWell(
                onTap: () {
                  controller.sendMessage();
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(30, 11, 12, 9),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLetsiconssendfill,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 60,
              ),
              contentPadding: EdgeInsets.only(
                left: 20,
                top: 18,
                bottom: 18,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
              filled: true,
              fillColor: theme.colorScheme.onError,
            )
          : orderCanclled
              ? Text(
                  "Astrologer denied your request.",
                  style: theme.textTheme.headlineMedium!
                      .copyWith(color: appTheme.primaryYellow),
                )
              : Text(
                  "Wait for the astrologer approval.",
                  style: theme.textTheme.headlineMedium,
                ),
    );
  }
}

// // ignore_for_file: must_be_immutable
// class ChatdetailScreen extends GetWidget<ChatdetailController> {
//   const ChatdetailScreen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         // extendBody: true,
//         // resizeToAvoidBottomInset: false,
//         appBar: CustomAppBar(
//           title: Row(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top: 44.h, left: 1.w),
//                 child: IconButton(
//                   onPressed: () {
//                     Get.back();
//                   },
//                   icon: Icon(
//                     Icons.arrow_back,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               AppbarTitle(
//                 text: "Chat",
//                 margin: EdgeInsets.only(top: 44.h, left: 10.w),
//               ),
//             ],
//           ),
//           styleType: Style.bgFill,
//         ),
//         body: Container(
//           width: SizeUtils.width,
//           height: SizeUtils.height,
//           // padding: EdgeInsets.only(bottom: 60),
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment(0.5, 0),
//               end: Alignment(0.5, 1),
//               colors: [
//                 theme.colorScheme.onError,
//                 appTheme.orange50,
//               ],
//             ),
//           ),
//           child: GetBuilder<ChatdetailController>(
//             builder: (_context) {
//               return ListView.builder(
//                 controller: controller.chatScrollController,
//                 itemBuilder: (context, index) {
//                 return Container(
//                         width: Get.width,
//                         padding: EdgeInsets.all(10.w),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Container(
//                               // margin: EdgeInsets.all(11),
//                               padding: EdgeInsets.all(11),
//                               decoration: AppDecoration.outlinePrimary1
//                                   .copyWith(
//                                 borderRadius:
//                                     BorderRadiusStyle.customBorderBL10,
//                               ),
//                               child: Text(
//                                 controller.chatList[index]['message'],
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: CustomTextStyles
//                                     .bodySmallPoppinsPrimary,
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//               },
//               itemCount: controller.chatList.length
//               );
//             }
//           ),
//         ),
//         bottomNavigationBar:_buildInputColumn(),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildChatDetailColumn() {
//     return Container(
//       margin: EdgeInsets.only(bottom: 5),
//       padding: EdgeInsets.symmetric(horizontal: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: 310,
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 87,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 16,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: Container(
//               width: 264,
//               margin: EdgeInsets.only(right: 5),
//               child: Text(
//                 "msg_a_publisher_of_astrology".tr,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: CustomTextStyles.bodySmallPoppinsPrimary,
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               width: 310,
//               margin: EdgeInsets.only(left: 98),
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 16,
//               ),
//               decoration: AppDecoration.outlinePrimary2.copyWith(
//                 borderRadius: BorderRadiusStyle.customBorderTL10,
//               ),
//               child: Container(
//                 width: 264,
//                 margin: EdgeInsets.only(right: 5),
//                 child: Text(
//                   "msg_a_publisher_of_astrology".tr,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: CustomTextStyles.bodySmallPoppinsPrimary,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 21),
//           Container(
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 67,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 19,
//               vertical: 5,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SizedBox(height: 10),
//                 SizedBox(
//                   width: 290,
//                   child: Text(
//                     "msg_his_father_adityadasa".tr,
//                     maxLines: 4,
//                     overflow: TextOverflow.ellipsis,
//                     style: CustomTextStyles.bodySmallPoppinsPrimary,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 22),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               width: 180,
//               margin: EdgeInsets.only(left: 228),
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 10,
//               ),
//               decoration: AppDecoration.outlinePrimary2.copyWith(
//                 borderRadius: BorderRadiusStyle.customBorderTL10,
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(height: 4),
//                   Text(
//                     "msg_what_are_my_3_signs".tr,
//                     style: CustomTextStyles.bodySmallPoppinsPrimary,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 21),
//           Container(
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 87,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 16,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: SizedBox(
//               width: 265,
//               child: Text(
//                 "msg_the_sun_is_your".tr,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: CustomTextStyles.bodySmallPoppinsPrimary,
//               ),
//             ),
//           ),
//           Container(
//             width: 310,
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 87,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 16,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: Container(
//               width: 264,
//               margin: EdgeInsets.only(right: 5),
//               child: Text(
//                 "msg_a_publisher_of_astrology".tr,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: CustomTextStyles.bodySmallPoppinsPrimary,
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               width: 310,
//               margin: EdgeInsets.only(left: 98),
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 16,
//               ),
//               decoration: AppDecoration.outlinePrimary2.copyWith(
//                 borderRadius: BorderRadiusStyle.customBorderTL10,
//               ),
//               child: Container(
//                 width: 264,
//                 margin: EdgeInsets.only(right: 5),
//                 child: Text(
//                   "msg_a_publisher_of_astrology".tr,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: CustomTextStyles.bodySmallPoppinsPrimary,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 21),
//           Container(
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 67,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 19,
//               vertical: 5,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SizedBox(height: 10),
//                 SizedBox(
//                   width: 290,
//                   child: Text(
//                     "msg_his_father_adityadasa".tr,
//                     maxLines: 4,
//                     overflow: TextOverflow.ellipsis,
//                     style: CustomTextStyles.bodySmallPoppinsPrimary,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 22),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               width: 180,
//               margin: EdgeInsets.only(left: 228),
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 10,
//               ),
//               decoration: AppDecoration.outlinePrimary2.copyWith(
//                 borderRadius: BorderRadiusStyle.customBorderTL10,
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(height: 4),
//                   Text(
//                     "msg_what_are_my_3_signs".tr,
//                     style: CustomTextStyles.bodySmallPoppinsPrimary,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 21),
//           Container(
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 87,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 16,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: SizedBox(
//               width: 265,
//               child: Text(
//                 "msg_the_sun_is_your".tr,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: CustomTextStyles.bodySmallPoppinsPrimary,
//               ),
//             ),
//           ),
//           Container(
//             width: 310,
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 87,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 16,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: Container(
//               width: 264,
//               margin: EdgeInsets.only(right: 5),
//               child: Text(
//                 "msg_a_publisher_of_astrology".tr,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: CustomTextStyles.bodySmallPoppinsPrimary,
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               width: 310,
//               margin: EdgeInsets.only(left: 98),
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 16,
//               ),
//               decoration: AppDecoration.outlinePrimary2.copyWith(
//                 borderRadius: BorderRadiusStyle.customBorderTL10,
//               ),
//               child: Container(
//                 width: 264,
//                 margin: EdgeInsets.only(right: 5),
//                 child: Text(
//                   "msg_a_publisher_of_astrology".tr,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: CustomTextStyles.bodySmallPoppinsPrimary,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 21),
//           Container(
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 67,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 19,
//               vertical: 5,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SizedBox(height: 10),
//                 SizedBox(
//                   width: 290,
//                   child: Text(
//                     "msg_his_father_adityadasa".tr,
//                     maxLines: 4,
//                     overflow: TextOverflow.ellipsis,
//                     style: CustomTextStyles.bodySmallPoppinsPrimary,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 22),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               width: 180,
//               margin: EdgeInsets.only(left: 228),
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 10,
//               ),
//               decoration: AppDecoration.outlinePrimary2.copyWith(
//                 borderRadius: BorderRadiusStyle.customBorderTL10,
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(height: 4),
//                   Text(
//                     "msg_what_are_my_3_signs".tr,
//                     style: CustomTextStyles.bodySmallPoppinsPrimary,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 21),
//           Container(
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 87,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 16,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: SizedBox(
//               width: 265,
//               child: Text(
//                 "msg_the_sun_is_your".tr,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: CustomTextStyles.bodySmallPoppinsPrimary,
//               ),
//             ),
//           ),
//           Container(
//             width: 310,
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 87,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 16,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: Container(
//               width: 264,
//               margin: EdgeInsets.only(right: 5),
//               child: Text(
//                 "msg_a_publisher_of_astrology".tr,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: CustomTextStyles.bodySmallPoppinsPrimary,
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               width: 310,
//               margin: EdgeInsets.only(left: 98),
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 16,
//               ),
//               decoration: AppDecoration.outlinePrimary2.copyWith(
//                 borderRadius: BorderRadiusStyle.customBorderTL10,
//               ),
//               child: Container(
//                 width: 264,
//                 margin: EdgeInsets.only(right: 5),
//                 child: Text(
//                   "msg_a_publisher_of_astrology".tr,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: CustomTextStyles.bodySmallPoppinsPrimary,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 21),
//           Container(
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 67,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 19,
//               vertical: 5,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SizedBox(height: 10),
//                 SizedBox(
//                   width: 290,
//                   child: Text(
//                     "msg_his_father_adityadasa".tr,
//                     maxLines: 4,
//                     overflow: TextOverflow.ellipsis,
//                     style: CustomTextStyles.bodySmallPoppinsPrimary,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 22),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               width: 180,
//               margin: EdgeInsets.only(left: 228),
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 10,
//               ),
//               decoration: AppDecoration.outlinePrimary2.copyWith(
//                 borderRadius: BorderRadiusStyle.customBorderTL10,
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(height: 4),
//                   Text(
//                     "msg_what_are_my_3_signs".tr,
//                     style: CustomTextStyles.bodySmallPoppinsPrimary,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 21),
//           Container(
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 87,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 16,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: SizedBox(
//               width: 265,
//               child: Text(
//                 "msg_the_sun_is_your".tr,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: CustomTextStyles.bodySmallPoppinsPrimary,
//               ),
//             ),
//           ),
//           Container(
//             width: 310,
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 87,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 16,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: Container(
//               width: 264,
//               margin: EdgeInsets.only(right: 5),
//               child: Text(
//                 "msg_a_publisher_of_astrology".tr,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: CustomTextStyles.bodySmallPoppinsPrimary,
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               width: 310,
//               margin: EdgeInsets.only(left: 98),
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 16,
//               ),
//               decoration: AppDecoration.outlinePrimary2.copyWith(
//                 borderRadius: BorderRadiusStyle.customBorderTL10,
//               ),
//               child: Container(
//                 width: 264,
//                 margin: EdgeInsets.only(right: 5),
//                 child: Text(
//                   "msg_a_publisher_of_astrology".tr,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: CustomTextStyles.bodySmallPoppinsPrimary,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 21),
//           Container(
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 67,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 19,
//               vertical: 5,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SizedBox(height: 10),
//                 SizedBox(
//                   width: 290,
//                   child: Text(
//                     "msg_his_father_adityadasa".tr,
//                     maxLines: 4,
//                     overflow: TextOverflow.ellipsis,
//                     style: CustomTextStyles.bodySmallPoppinsPrimary,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 22),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               width: 180,
//               margin: EdgeInsets.only(left: 228),
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 10,
//               ),
//               decoration: AppDecoration.outlinePrimary2.copyWith(
//                 borderRadius: BorderRadiusStyle.customBorderTL10,
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(height: 4),
//                   Text(
//                     "msg_what_are_my_3_signs".tr,
//                     style: CustomTextStyles.bodySmallPoppinsPrimary,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 21),
//           Container(
//             margin: EdgeInsets.only(
//               left: 11,
//               right: 87,
//             ),
//             padding: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 16,
//             ),
//             decoration: AppDecoration.outlinePrimary1.copyWith(
//               borderRadius: BorderRadiusStyle.customBorderBL10,
//             ),
//             child: SizedBox(
//               width: 265,
//               child: Text(
//                 "msg_the_sun_is_your".tr,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: CustomTextStyles.bodySmallPoppinsPrimary,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildInputColumn() {
//     return Padding(
//       padding: EdgeInsets.only(
//         left: 10,
//         right: 10,
//         bottom: 10,
//       ),
//       child: CustomTextFormField(
//         controller: controller.inputColumnController,
//         hintText: "lbl_type_here".tr,
//         hintStyle: CustomTextStyles.bodyLargePoppinsGray50001,
//         textInputAction: TextInputAction.done,
//         suffix: InkWell(
//           onTap: () {
//             // controller.sendMessage();
//           },
//           child: Container(
//             margin: EdgeInsets.fromLTRB(30, 11, 12, 9),
//             child: CustomImageView(
//               imagePath: ImageConstant.imgLetsiconssendfill,
//               height: 40,
//               width: 40,
//             ),
//           ),
//         ),
//         suffixConstraints: BoxConstraints(
//           maxHeight: 60,
//         ),
//         contentPadding: EdgeInsets.only(
//           left: 20,
//           top: 18,
//           bottom: 18,
//         ),
//         borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
//         filled: true,
//         fillColor: theme.colorScheme.onError,
//       ),
//     );
//   }
// }
