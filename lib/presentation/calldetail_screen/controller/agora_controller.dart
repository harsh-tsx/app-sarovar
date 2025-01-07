// import 'dart:async';

// import 'package:agora_rtc_engine/agora_rtc_engine.dart';
// import 'package:app_1point2_store/core/utils/Toast.dart';
// import 'package:get/get.dart';

// class AgoraController extends GetxController {
//   // AgoraController();
//   late RtcEngine agoraEngine;

//   Timer? _timer;
//   var timer_seconds = 0.obs;
//   Duration get time => Duration(seconds: this.timer_seconds.value);

//   var is_mute = false.obs;
//   var is_speaker_on = false.obs;

//   @override
//   void onClose() {
//     super.onClose();
//     leave();
//   }

//   initAgora(appId, RtcEngineEventHandler rtcEngineEventHandler) async {
//     //create an instance of the Agora engine
//     agoraEngine = createAgoraRtcEngine();

//     await agoraEngine.initialize(RtcEngineContext(appId: appId));

//     this.registerEventHandler(rtcEngineEventHandler);
//   }

//   void registerEventHandler(RtcEngineEventHandler rtcEngineEventHandler) {
//     // Register the event handler
//     agoraEngine.registerEventHandler(
//       rtcEngineEventHandler,
//     );
//   }

//   void join(String token, String channelId, ChannelMediaOptions options,
//       int uid) async {
//     try {
//       await agoraEngine.joinChannel(
//         token: token,
//         channelId: channelId,
//         options: options,
//         uid: uid,
//       );
//     } catch (err) {
//       print("ERROR IN JOINING THE CALL");
//       print(err);
//     }
//   }

//   handleMuteAudio([bool? mute]) {
//     if (mute != null) {
//       is_mute.value = mute;
//     } else {
//       is_mute.value = !is_mute.value;
//     }

//     agoraEngine.muteLocalAudioStream(is_mute.value);
//     update();
//   }

//   handleSpeaker([bool? speaker_on]) {
//     if (speaker_on != null) {
//       is_speaker_on.value = speaker_on;
//     } else {
//       is_speaker_on.value = !is_speaker_on.value;
//     }

//     agoraEngine.setDefaultAudioRouteToSpeakerphone(is_speaker_on.value);
//     update();
//   }

//   leave() async {
//     await agoraEngine.leaveChannel();
//   }

//   startTimer() {
//     const oneSec = const Duration(seconds: 1);
//     _timer = new Timer.periodic(
//       oneSec,
//       (Timer timer) {
//         timer_seconds.value++;
//         update();
//       },
//     );
//   }

//   endTimer() {
//     _timer!.cancel();
//     return timer_seconds;
//   }
// }
