// import 'dart:convert';

// import 'package:agora_rtc_engine/agora_rtc_engine.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:app_1point2_store/configs/env.dart';
// import 'package:app_1point2_store/core/utils/Toast.dart';
// import 'package:app_1point2_store/core/utils/app_utils.dart';
// import 'package:app_1point2_store/core/utils/types.dart';
// import 'package:app_1point2_store/presentation/calldetail_screen/controller/agora_controller.dart';
// import 'package:app_1point2_store/widgets/app_bar/appbar_title.dart';
// import 'package:app_1point2_store/widgets/custom_icon_button.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:app_1point2_store/core/app_export.dart';
// import 'package:app_1point2_store/widgets/app_bar/custom_app_bar.dart';
// import 'package:app_1point2_store/widgets/custom_text_form_field.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'controller/calldetail_controller.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:intl/intl.dart';

// class CalldetailScreen extends StatefulWidget {
//   const CalldetailScreen({Key? key}) : super(key: key);

//   @override
//   State<CalldetailScreen> createState() => _CalldetailScreenState();
// }

// class _CalldetailScreenState extends State<CalldetailScreen> {
//   var controller =
//       isControllerRegistered<CalldetailController>(CalldetailController());
//   var agoraController =
//       isControllerRegistered<AgoraController>(AgoraController());

//   String appId = "";
//   String channelName = "";
//   String token = "";
//   int uid = 0; // uid of the local user

//   int? _remoteUid; // uid of the remote user
//   bool _isJoined = false; // Indicates if the local user has joined the channel
//   // late RtcEngine agoraEngine; // Agora engine instance

//   /** Firebase states */
//   FirebaseApp? firebaseApp;

//   FirebaseDatabase? rtdb;

//   NumberFormat time_formatter = NumberFormat("00");

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     listenCallResponse();
//     agoraController.startTimer();
//   }

//   listenCallResponse() async {
//     var orderData = Get.arguments;

//     firebaseApp = Firebase.app();

//     rtdb = FirebaseDatabase.instanceFor(
//         app: firebaseApp!, databaseURL: Env.firebaseDbUrl);

//     var order_update_prefix = "order_update/v1/${orderData['_id']}";
//     print("prefix order_update_prefix: ${order_update_prefix}");

//     // var order_update_item =
//     //     await rtdb!.ref((order_update_prefix)).limitToLast(10).get();

//     var orderUpdatechatListener = rtdb!.ref(order_update_prefix);

//     orderUpdatechatListener.onChildAdded.listen((event) {
//       print("HELLO MESSAGE RECIEVED FROM CHILD ORDER UPDATE CHILD CALL");
//       var eventItem = jsonDecode(jsonEncode(event.snapshot.value));
//       print("item.value from onChildAdded CALL: ${eventItem} \n");
//       if (eventItem['status'] == "confirmed") {
//         setState(() {
//           appId = eventItem['payload']['common']['app_id'];
//           channelName = eventItem['payload']['common']['channel_name'];
//           token = eventItem['payload']['user']['token'];
//           uid = eventItem['payload']['user']['uid'];

//           print(
//               "appId: ${appId} \n channelName: ${channelName} \n token: ${token} \n uid: ${uid}");
//           setupVoiceSDKEngine(token, channelName, uid);
//         });
//       } else {
//         setState(() {});
//       }
//     });
//   }

//   Future<void> setupVoiceSDKEngine(
//       String token, String channelId, int uid) async {
//     // retrieve or request microphone permission
//     await [Permission.microphone].request();

//     print(
//         "appId: ${appId} \n channelName: ${channelName} \n token: ${token} \n uid: ${uid}");

//     //create an instance of the Agora engine
//     await agoraController.initAgora(
//         appId,
//         RtcEngineEventHandler(
//           onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
//             Toast.success(
//                 "Local user uid:${connection.localUid} joined the channel");
//             setState(() {
//               _isJoined = true;
//             });
//           },
//           onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
//             Toast.success("Remote user uid:$remoteUid joined the channel");
//             setState(() {
//               _remoteUid = remoteUid;
//             });
//           },
//           onUserOffline: (RtcConnection connection, int remoteUid,
//               UserOfflineReasonType reason) {
//             Toast.success("Remote user uid:$remoteUid left the channel");
//             setState(() {
//               _remoteUid = null;
//             });
//           },
//           onUserMuteAudio: (connection, remoteUid, muted) {},
//         ));

//     agoraController.join(
//         token,
//         channelName,
//         const ChannelMediaOptions(
//           clientRoleType: ClientRoleType.clientRoleBroadcaster,
//           channelProfile: ChannelProfileType.channelProfileCommunication,
//           publishCameraTrack: false,
//         ),
//         uid);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PopScope(
//       canPop: false,
//       onPopInvoked: (bool didPop) async {
//         print(didPop);
//         if (didPop) {
//           return;
//         }
//         if (context.mounted) {
//           // Get.back();
//         }
//       },
//       child: SafeArea(
//         child: Scaffold(
//           // extendBody: true,
//           // resizeToAvoidBottomInset: false,
//           body: Container(
//             width: Get.width,
//             height: Get.height,
//             // padding: EdgeInsets.only(bottom: 60),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment(0.5, 0),
//                 end: Alignment(0.5, 1),
//                 colors: [
//                   theme.colorScheme.onError,
//                   appTheme.orange50,
//                 ],
//               ),
//             ),
//             child: Column(
//               children: [
//                 Container(
//                   height: Get.height.percent(47.5),
//                   width: Get.width.percent(100),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       bottomRight: Radius.circular(50),
//                       bottomLeft: Radius.circular(50),
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.shade100,
//                         blurRadius: 25.0, // soften the shadow
//                         spreadRadius: 5.0, //extend the shadow
//                         offset: Offset(
//                           15.0, // Move to right 10  horizontally
//                           15.0, // Move to bottom 10 Vertically
//                         ),
//                       )
//                     ],
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Stack(
//                         children: [
//                           CustomImageView(
//                             imagePath: "https://i.pravatar.cc/500",
//                             width: 100.w,
//                             height: 100.h,
//                             radius: BorderRadius.circular(100),
//                             // color: Colors.black.withOpacity(0.5),
//                           ),
//                           Positioned(
//                             bottom: 0,
//                             right: 0,
//                             child: Container(
//                               width: 25.w,
//                               height: 25.w,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(100),
//                                 border: Border.all(
//                                   color: appTheme.gray200,
//                                   width: 1.0,
//                                 ),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black87,
//                                     blurRadius: 15.0, // soften the shadow
//                                     spreadRadius: 2.0, //extend the shadow
//                                     offset: Offset(
//                                       0.0, // Move to right 10  horizontally
//                                       0.0, // Move to bottom 10 Vertically
//                                     ),
//                                   )
//                                 ],
//                               ),
//                               child: Icon(
//                                 Icons.mic_off,
//                                 size: 18.w,
//                                 color: appTheme.primaryRed,
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                       Text(
//                         "Astrologer",
//                         style: CustomTextStyles.headlineLargeRighteousOnError
//                             .copyWith(
//                           color: Colors.black,
//                         ),
//                       ),
//                       !(_remoteUid != null)
//                           ? Column(
//                               children: [
//                                 Text(
//                                   "Ongoing",
//                                   style: TextStyle(
//                                     color: appTheme.greenA700,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 Obx(
//                                   () => Text(
//                                     "${agoraController.time.inHours > 0 ? time_formatter.format(agoraController.time.inHours) + ":" : ""}${time_formatter.format(agoraController.time.inMinutes % 3600)}:${time_formatter.format(agoraController.time.inSeconds % 60)}",
//                                     style: TextStyle(
//                                       color: appTheme.primaryRed,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             )
//                           : DefaultTextStyle(
//                               style: TextStyle(
//                                 color: appTheme.primaryRed,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               child: AnimatedTextKit(
//                                 repeatForever: true,
//                                 animatedTexts: [
//                                   TyperAnimatedText('Callling....'),
//                                 ],
//                               ),
//                             ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: Get.height.percent(47.5),
//                   width: Get.width.percent(100),
//                   decoration: BoxDecoration(),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       GridView.count(
//                         shrinkWrap: true,
//                         crossAxisCount: 3,
//                         children: <Widget>[
//                           GridTile(
//                             child: Column(
//                               children: [
//                                 Material(
//                                   type: MaterialType
//                                       .transparency, //Makes it usable on any background color, thanks @IanSmith
//                                   child: Ink(
//                                     decoration: BoxDecoration(
//                                       border: Border.all(
//                                         color: appTheme.gray200,
//                                         width: 1.0,
//                                       ),
//                                       color: Colors.white,
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child: InkWell(
//                                       //This keeps the splash effect within the circle
//                                       borderRadius: BorderRadius.circular(
//                                           1000.0), //Something large to ensure a circle
//                                       onTap: () {
//                                         agoraController.handleMuteAudio();
//                                       },
//                                       child: Padding(
//                                         padding: EdgeInsets.all(20.0),
//                                         child: Obx(
//                                           () => Icon(
//                                             Icons.mic_off,
//                                             size: 30.0,
//                                             color: agoraController.is_mute.value
//                                                 ? appTheme.primaryRed
//                                                 : appTheme.gray50001,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5.h,
//                                 ),
//                                 Text(
//                                   "Mute",
//                                   style: theme.textTheme.labelMedium!.copyWith(
//                                     fontSize: 14.fSize,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                           GridTile(
//                             child: Column(
//                               children: [
//                                 Material(
//                                   type: MaterialType
//                                       .transparency, //Makes it usable on any background color, thanks @IanSmith
//                                   child: Ink(
//                                     decoration: BoxDecoration(
//                                       border: Border.all(
//                                         color: appTheme.gray200,
//                                         width: 1.0,
//                                       ),
//                                       color: Colors.white,
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child: InkWell(
//                                       //This keeps the splash effect within the circle
//                                       borderRadius: BorderRadius.circular(
//                                           1000.0), //Something large to ensure a circle
//                                       onTap: () {
//                                         agoraController.handleSpeaker();
//                                       },
//                                       child: Padding(
//                                         padding: EdgeInsets.all(20.0),
//                                         child: Obx(
//                                           () => Icon(
//                                             Icons.volume_up,
//                                             size: 30.0,
//                                             color: agoraController
//                                                     .is_speaker_on.value
//                                                 ? appTheme.gray90001
//                                                 : appTheme.gray50001,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5.h,
//                                 ),
//                                 Text(
//                                   "Speaker",
//                                   style: theme.textTheme.labelMedium!.copyWith(
//                                     fontSize: 14.fSize,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                           GridTile(
//                             child: Column(
//                               children: [
//                                 Material(
//                                   type: MaterialType
//                                       .transparency, //Makes it usable on any background color, thanks @IanSmith
//                                   child: Ink(
//                                     decoration: BoxDecoration(
//                                       border: Border.all(
//                                         color: appTheme.gray200,
//                                         width: 1.0,
//                                       ),
//                                       color: Colors.white,
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child: InkWell(
//                                       //This keeps the splash effect within the circle
//                                       borderRadius: BorderRadius.circular(
//                                           1000.0), //Something large to ensure a circle
//                                       onTap: () {},
//                                       child: Padding(
//                                         padding: EdgeInsets.all(20.0),
//                                         child: Icon(
//                                           Icons.mic_off,
//                                           size: 30.0,
//                                           color: true
//                                               ? appTheme.gray50001
//                                               : appTheme.gray90001,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5.h,
//                                 ),
//                                 Text(
//                                   "Mute",
//                                   style: theme.textTheme.labelMedium!.copyWith(
//                                     fontSize: 14.fSize,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       IconButton(
//                         padding: EdgeInsets.all(15.h),
//                         color: Colors.white,
//                         style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.resolveWith((states) {
//                             // If the button is pressed, return green, otherwise blue
//                             // if (states.contains(MaterialState.pressed)) {
//                             //   return Colors.green;
//                             // }
//                             return Colors.red;
//                           }),
//                         ),
//                         onPressed: () {
//                           Get.back();
//                         },
//                         icon: Icon(
//                           Icons.call_end,
//                         ),
//                         iconSize: 30.w,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // Clean up the resources when you leave
//   @override
//   void dispose() async {
//     await agoraController.leave();
//     super.dispose();
//   }

//   Widget _status() {
//     String statusText;

//     if (!_isJoined)
//       statusText = 'Join a channel';
//     else if (_remoteUid == null)
//       statusText = 'Waiting for a remote user to join...';
//     else
//       statusText = 'Connected to remote user, uid:$_remoteUid';

//     return Text(
//       statusText,
//     );
//   }

//   showMessage(String message) {}
// }

// // // ignore_for_file: must_be_immutable
// // class ChatdetailScreen extends GetWidget<ChatdetailController> {
// //   const ChatdetailScreen({Key? key})
// //       : super(
// //           key: key,
// //         );

// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         // extendBody: true,
// //         // resizeToAvoidBottomInset: false,
// //         appBar: CustomAppBar(
// //           title: Row(
// //             children: [
// //               Container(
// //                 margin: EdgeInsets.only(top: 44.h, left: 1.w),
// //                 child: IconButton(
// //                   onPressed: () {
// //                     Get.back();
// //                   },
// //                   icon: Icon(
// //                     Icons.arrow_back,
// //                     color: Colors.white,
// //                   ),
// //                 ),
// //               ),
// //               AppbarTitle(
// //                 text: "Chat",
// //                 margin: EdgeInsets.only(top: 44.h, left: 10.w),
// //               ),
// //             ],
// //           ),
// //           styleType: Style.bgFill,
// //         ),
// //         body: Container(
// //           width: SizeUtils.width,
// //           height: SizeUtils.height,
// //           // padding: EdgeInsets.only(bottom: 60),
// //           decoration: BoxDecoration(
// //             gradient: LinearGradient(
// //               begin: Alignment(0.5, 0),
// //               end: Alignment(0.5, 1),
// //               colors: [
// //                 theme.colorScheme.onError,
// //                 appTheme.orange50,
// //               ],
// //             ),
// //           ),
// //           child: GetBuilder<ChatdetailController>(
// //             builder: (_context) {
// //               return ListView.builder(
// //                 controller: controller.chatScrollController,
// //                 itemBuilder: (context, index) {
// //                 return Container(
// //                         width: Get.width,
// //                         padding: EdgeInsets.all(10.w),
// //                         child: Row(
// //                           mainAxisSize: MainAxisSize.max,
// //                           mainAxisAlignment: MainAxisAlignment.start,
// //                           children: [
// //                             Container(
// //                               // margin: EdgeInsets.all(11),
// //                               padding: EdgeInsets.all(11),
// //                               decoration: AppDecoration.outlinePrimary1
// //                                   .copyWith(
// //                                 borderRadius:
// //                                     BorderRadiusStyle.customBorderBL10,
// //                               ),
// //                               child: Text(
// //                                 controller.chatList[index]['message'],
// //                                 maxLines: 2,
// //                                 overflow: TextOverflow.ellipsis,
// //                                 style: CustomTextStyles
// //                                     .bodySmallPoppinsPrimary,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       );
// //               },
// //               itemCount: controller.chatList.length
// //               );
// //             }
// //           ),
// //         ),
// //         bottomNavigationBar:_buildInputColumn(),
// //       ),
// //     );
// //   }

// //   /// Section Widget
// //   Widget _buildChatDetailColumn() {
// //     return Container(
// //       margin: EdgeInsets.only(bottom: 5),
// //       padding: EdgeInsets.symmetric(horizontal: 10),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Container(
// //             width: 310,
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 87,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 20,
// //               vertical: 16,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: Container(
// //               width: 264,
// //               margin: EdgeInsets.only(right: 5),
// //               child: Text(
// //                 "msg_a_publisher_of_astrology".tr,
// //                 maxLines: 2,
// //                 overflow: TextOverflow.ellipsis,
// //                 style: CustomTextStyles.bodySmallPoppinsPrimary,
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 20),
// //           Align(
// //             alignment: Alignment.centerRight,
// //             child: Container(
// //               width: 310,
// //               margin: EdgeInsets.only(left: 98),
// //               padding: EdgeInsets.symmetric(
// //                 horizontal: 20,
// //                 vertical: 16,
// //               ),
// //               decoration: AppDecoration.outlinePrimary2.copyWith(
// //                 borderRadius: BorderRadiusStyle.customBorderTL10,
// //               ),
// //               child: Container(
// //                 width: 264,
// //                 margin: EdgeInsets.only(right: 5),
// //                 child: Text(
// //                   "msg_a_publisher_of_astrology".tr,
// //                   maxLines: 2,
// //                   overflow: TextOverflow.ellipsis,
// //                   style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 21),
// //           Container(
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 67,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 19,
// //               vertical: 5,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 SizedBox(height: 10),
// //                 SizedBox(
// //                   width: 290,
// //                   child: Text(
// //                     "msg_his_father_adityadasa".tr,
// //                     maxLines: 4,
// //                     overflow: TextOverflow.ellipsis,
// //                     style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           SizedBox(height: 22),
// //           Align(
// //             alignment: Alignment.centerRight,
// //             child: Container(
// //               width: 180,
// //               margin: EdgeInsets.only(left: 228),
// //               padding: EdgeInsets.symmetric(
// //                 horizontal: 20,
// //                 vertical: 10,
// //               ),
// //               decoration: AppDecoration.outlinePrimary2.copyWith(
// //                 borderRadius: BorderRadiusStyle.customBorderTL10,
// //               ),
// //               child: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   SizedBox(height: 4),
// //                   Text(
// //                     "msg_what_are_my_3_signs".tr,
// //                     style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 21),
// //           Container(
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 87,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 20,
// //               vertical: 16,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: SizedBox(
// //               width: 265,
// //               child: Text(
// //                 "msg_the_sun_is_your".tr,
// //                 maxLines: 2,
// //                 overflow: TextOverflow.ellipsis,
// //                 style: CustomTextStyles.bodySmallPoppinsPrimary,
// //               ),
// //             ),
// //           ),
// //           Container(
// //             width: 310,
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 87,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 20,
// //               vertical: 16,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: Container(
// //               width: 264,
// //               margin: EdgeInsets.only(right: 5),
// //               child: Text(
// //                 "msg_a_publisher_of_astrology".tr,
// //                 maxLines: 2,
// //                 overflow: TextOverflow.ellipsis,
// //                 style: CustomTextStyles.bodySmallPoppinsPrimary,
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 20),
// //           Align(
// //             alignment: Alignment.centerRight,
// //             child: Container(
// //               width: 310,
// //               margin: EdgeInsets.only(left: 98),
// //               padding: EdgeInsets.symmetric(
// //                 horizontal: 20,
// //                 vertical: 16,
// //               ),
// //               decoration: AppDecoration.outlinePrimary2.copyWith(
// //                 borderRadius: BorderRadiusStyle.customBorderTL10,
// //               ),
// //               child: Container(
// //                 width: 264,
// //                 margin: EdgeInsets.only(right: 5),
// //                 child: Text(
// //                   "msg_a_publisher_of_astrology".tr,
// //                   maxLines: 2,
// //                   overflow: TextOverflow.ellipsis,
// //                   style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 21),
// //           Container(
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 67,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 19,
// //               vertical: 5,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 SizedBox(height: 10),
// //                 SizedBox(
// //                   width: 290,
// //                   child: Text(
// //                     "msg_his_father_adityadasa".tr,
// //                     maxLines: 4,
// //                     overflow: TextOverflow.ellipsis,
// //                     style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           SizedBox(height: 22),
// //           Align(
// //             alignment: Alignment.centerRight,
// //             child: Container(
// //               width: 180,
// //               margin: EdgeInsets.only(left: 228),
// //               padding: EdgeInsets.symmetric(
// //                 horizontal: 20,
// //                 vertical: 10,
// //               ),
// //               decoration: AppDecoration.outlinePrimary2.copyWith(
// //                 borderRadius: BorderRadiusStyle.customBorderTL10,
// //               ),
// //               child: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   SizedBox(height: 4),
// //                   Text(
// //                     "msg_what_are_my_3_signs".tr,
// //                     style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 21),
// //           Container(
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 87,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 20,
// //               vertical: 16,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: SizedBox(
// //               width: 265,
// //               child: Text(
// //                 "msg_the_sun_is_your".tr,
// //                 maxLines: 2,
// //                 overflow: TextOverflow.ellipsis,
// //                 style: CustomTextStyles.bodySmallPoppinsPrimary,
// //               ),
// //             ),
// //           ),
// //           Container(
// //             width: 310,
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 87,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 20,
// //               vertical: 16,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: Container(
// //               width: 264,
// //               margin: EdgeInsets.only(right: 5),
// //               child: Text(
// //                 "msg_a_publisher_of_astrology".tr,
// //                 maxLines: 2,
// //                 overflow: TextOverflow.ellipsis,
// //                 style: CustomTextStyles.bodySmallPoppinsPrimary,
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 20),
// //           Align(
// //             alignment: Alignment.centerRight,
// //             child: Container(
// //               width: 310,
// //               margin: EdgeInsets.only(left: 98),
// //               padding: EdgeInsets.symmetric(
// //                 horizontal: 20,
// //                 vertical: 16,
// //               ),
// //               decoration: AppDecoration.outlinePrimary2.copyWith(
// //                 borderRadius: BorderRadiusStyle.customBorderTL10,
// //               ),
// //               child: Container(
// //                 width: 264,
// //                 margin: EdgeInsets.only(right: 5),
// //                 child: Text(
// //                   "msg_a_publisher_of_astrology".tr,
// //                   maxLines: 2,
// //                   overflow: TextOverflow.ellipsis,
// //                   style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 21),
// //           Container(
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 67,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 19,
// //               vertical: 5,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 SizedBox(height: 10),
// //                 SizedBox(
// //                   width: 290,
// //                   child: Text(
// //                     "msg_his_father_adityadasa".tr,
// //                     maxLines: 4,
// //                     overflow: TextOverflow.ellipsis,
// //                     style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           SizedBox(height: 22),
// //           Align(
// //             alignment: Alignment.centerRight,
// //             child: Container(
// //               width: 180,
// //               margin: EdgeInsets.only(left: 228),
// //               padding: EdgeInsets.symmetric(
// //                 horizontal: 20,
// //                 vertical: 10,
// //               ),
// //               decoration: AppDecoration.outlinePrimary2.copyWith(
// //                 borderRadius: BorderRadiusStyle.customBorderTL10,
// //               ),
// //               child: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   SizedBox(height: 4),
// //                   Text(
// //                     "msg_what_are_my_3_signs".tr,
// //                     style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 21),
// //           Container(
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 87,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 20,
// //               vertical: 16,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: SizedBox(
// //               width: 265,
// //               child: Text(
// //                 "msg_the_sun_is_your".tr,
// //                 maxLines: 2,
// //                 overflow: TextOverflow.ellipsis,
// //                 style: CustomTextStyles.bodySmallPoppinsPrimary,
// //               ),
// //             ),
// //           ),
// //           Container(
// //             width: 310,
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 87,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 20,
// //               vertical: 16,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: Container(
// //               width: 264,
// //               margin: EdgeInsets.only(right: 5),
// //               child: Text(
// //                 "msg_a_publisher_of_astrology".tr,
// //                 maxLines: 2,
// //                 overflow: TextOverflow.ellipsis,
// //                 style: CustomTextStyles.bodySmallPoppinsPrimary,
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 20),
// //           Align(
// //             alignment: Alignment.centerRight,
// //             child: Container(
// //               width: 310,
// //               margin: EdgeInsets.only(left: 98),
// //               padding: EdgeInsets.symmetric(
// //                 horizontal: 20,
// //                 vertical: 16,
// //               ),
// //               decoration: AppDecoration.outlinePrimary2.copyWith(
// //                 borderRadius: BorderRadiusStyle.customBorderTL10,
// //               ),
// //               child: Container(
// //                 width: 264,
// //                 margin: EdgeInsets.only(right: 5),
// //                 child: Text(
// //                   "msg_a_publisher_of_astrology".tr,
// //                   maxLines: 2,
// //                   overflow: TextOverflow.ellipsis,
// //                   style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 21),
// //           Container(
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 67,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 19,
// //               vertical: 5,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 SizedBox(height: 10),
// //                 SizedBox(
// //                   width: 290,
// //                   child: Text(
// //                     "msg_his_father_adityadasa".tr,
// //                     maxLines: 4,
// //                     overflow: TextOverflow.ellipsis,
// //                     style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           SizedBox(height: 22),
// //           Align(
// //             alignment: Alignment.centerRight,
// //             child: Container(
// //               width: 180,
// //               margin: EdgeInsets.only(left: 228),
// //               padding: EdgeInsets.symmetric(
// //                 horizontal: 20,
// //                 vertical: 10,
// //               ),
// //               decoration: AppDecoration.outlinePrimary2.copyWith(
// //                 borderRadius: BorderRadiusStyle.customBorderTL10,
// //               ),
// //               child: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   SizedBox(height: 4),
// //                   Text(
// //                     "msg_what_are_my_3_signs".tr,
// //                     style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 21),
// //           Container(
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 87,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 20,
// //               vertical: 16,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: SizedBox(
// //               width: 265,
// //               child: Text(
// //                 "msg_the_sun_is_your".tr,
// //                 maxLines: 2,
// //                 overflow: TextOverflow.ellipsis,
// //                 style: CustomTextStyles.bodySmallPoppinsPrimary,
// //               ),
// //             ),
// //           ),
// //           Container(
// //             width: 310,
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 87,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 20,
// //               vertical: 16,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: Container(
// //               width: 264,
// //               margin: EdgeInsets.only(right: 5),
// //               child: Text(
// //                 "msg_a_publisher_of_astrology".tr,
// //                 maxLines: 2,
// //                 overflow: TextOverflow.ellipsis,
// //                 style: CustomTextStyles.bodySmallPoppinsPrimary,
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 20),
// //           Align(
// //             alignment: Alignment.centerRight,
// //             child: Container(
// //               width: 310,
// //               margin: EdgeInsets.only(left: 98),
// //               padding: EdgeInsets.symmetric(
// //                 horizontal: 20,
// //                 vertical: 16,
// //               ),
// //               decoration: AppDecoration.outlinePrimary2.copyWith(
// //                 borderRadius: BorderRadiusStyle.customBorderTL10,
// //               ),
// //               child: Container(
// //                 width: 264,
// //                 margin: EdgeInsets.only(right: 5),
// //                 child: Text(
// //                   "msg_a_publisher_of_astrology".tr,
// //                   maxLines: 2,
// //                   overflow: TextOverflow.ellipsis,
// //                   style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 21),
// //           Container(
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 67,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 19,
// //               vertical: 5,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 SizedBox(height: 10),
// //                 SizedBox(
// //                   width: 290,
// //                   child: Text(
// //                     "msg_his_father_adityadasa".tr,
// //                     maxLines: 4,
// //                     overflow: TextOverflow.ellipsis,
// //                     style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           SizedBox(height: 22),
// //           Align(
// //             alignment: Alignment.centerRight,
// //             child: Container(
// //               width: 180,
// //               margin: EdgeInsets.only(left: 228),
// //               padding: EdgeInsets.symmetric(
// //                 horizontal: 20,
// //                 vertical: 10,
// //               ),
// //               decoration: AppDecoration.outlinePrimary2.copyWith(
// //                 borderRadius: BorderRadiusStyle.customBorderTL10,
// //               ),
// //               child: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   SizedBox(height: 4),
// //                   Text(
// //                     "msg_what_are_my_3_signs".tr,
// //                     style: CustomTextStyles.bodySmallPoppinsPrimary,
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 21),
// //           Container(
// //             margin: EdgeInsets.only(
// //               left: 11,
// //               right: 87,
// //             ),
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 20,
// //               vertical: 16,
// //             ),
// //             decoration: AppDecoration.outlinePrimary1.copyWith(
// //               borderRadius: BorderRadiusStyle.customBorderBL10,
// //             ),
// //             child: SizedBox(
// //               width: 265,
// //               child: Text(
// //                 "msg_the_sun_is_your".tr,
// //                 maxLines: 2,
// //                 overflow: TextOverflow.ellipsis,
// //                 style: CustomTextStyles.bodySmallPoppinsPrimary,
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   /// Section Widget
// //   Widget _buildInputColumn() {
// //     return Padding(
// //       padding: EdgeInsets.only(
// //         left: 10,
// //         right: 10,
// //         bottom: 10,
// //       ),
// //       child: CustomTextFormField(
// //         controller: controller.inputColumnController,
// //         hintText: "lbl_type_here".tr,
// //         hintStyle: CustomTextStyles.bodyLargePoppinsGray50001,
// //         textInputAction: TextInputAction.done,
// //         suffix: InkWell(
// //           onTap: () {
// //             // controller.sendMessage();
// //           },
// //           child: Container(
// //             margin: EdgeInsets.fromLTRB(30, 11, 12, 9),
// //             child: CustomImageView(
// //               imagePath: ImageConstant.imgLetsiconssendfill,
// //               height: 40,
// //               width: 40,
// //             ),
// //           ),
// //         ),
// //         suffixConstraints: BoxConstraints(
// //           maxHeight: 60,
// //         ),
// //         contentPadding: EdgeInsets.only(
// //           left: 20,
// //           top: 18,
// //           bottom: 18,
// //         ),
// //         borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
// //         filled: true,
// //         fillColor: theme.colorScheme.onError,
// //       ),
// //     );
// //   }
// // }
