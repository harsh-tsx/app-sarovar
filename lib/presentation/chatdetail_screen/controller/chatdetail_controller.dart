import 'dart:convert';

import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/keyboard_visibility.dart';
import 'package:app_1point2_store/presentation/chatdetail_screen/models/chatdetail_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

/// A controller class for the ChatdetailScreen.
///
/// This class manages the state of the ChatdetailScreen, including the
/// current chatdetailModelObj

const db_prefix = "messages/v1";

class ChatdetailController extends GetxController {
  TextEditingController inputColumnController = TextEditingController();

  Rx<ChatdetailModel> chatdetailModelObj = ChatdetailModel().obs;

  FirebaseDatabase database = FirebaseDatabase.instance;

  FirebaseApp? firebaseApp;

  FirebaseDatabase? rtdb;

  var db_prefix = "new_message/v1";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        print("msgFocusNode.hasFocus: ${visible}");
      },
    );

    // firebaseApp = Firebase.app();

    // rtdb = FirebaseDatabase.instanceFor(
    //     app: firebaseApp!,
    //     databaseURL:
    //         'https://astrokoolam-cd0dd-default-rtdb.asia-southeast1.firebasedatabase.app');

    // var chatListener = rtdb!
    //     .ref((db_prefix))
    //     .limitToLast(1); // to get latest data only with limit 1;

    // rtdb!.ref((db_prefix)).get().then((value) {
    //   value.children.map((e) {
    //     print("get message data 1 ${e.value}");
    //     print("get message data 2 ${e.children.first}");
    //     return e;
    //   }).toList();
    // });

    // chatListener.onValue.listen((event) {
    //   print("HELLO MESSAGE RECIEVED FROM VALUE");
    //   print(event.snapshot.value);
    // });

    // chatListener.onChildAdded.listen((event) {
    //   print("HELLO MESSAGE RECIEVED FROM CHILD");
    //   print(event);

    //   print(event.snapshot.value);

    //   // for (var key in event.snapshot.children) {
    //   //   print(key.value);
    //   // }
    // });

    (() async {
      try {
        var orderData = jsonDecode(jsonEncode(Get.arguments));

        firebaseApp = Firebase.app();

        rtdb = FirebaseDatabase.instanceFor(
            app: firebaseApp!,
            databaseURL:
                'https://astrokoolam-cd0dd-default-rtdb.asia-southeast1.firebasedatabase.app');

        // var prefix = db_prefix + "/${orderData['chat_room']['_id']}";

        // var item = await rtdb!.ref((prefix)).get();
        // print("item.value: ${item.children.first.value} \n");

        // var latestItem = jsonDecode(jsonEncode(item.children.first.value));

        // var chatListener = rtdb!.ref(prefix).limitToLast(1);

        // chatListener.onChildAdded.listen((event) {
        //   var eventItem = jsonDecode(jsonEncode(event.snapshot.value));
        //   print("HELLO MESSAGE RECIEVED FROM CHILD");
        //   print("item.value from onChildAdded: ${eventItem} \n");

        //   // if (eventItem['_id'] != latestItem['_id']) {
        //   //   print("HELLO MESSAGE RECIEVED FROM CHILD");
        //   //   print("item.value from onChildAdded: ${event.snapshot.value} \n");
        //   //   print(
        //   //       "item.value from onChildAdded _id: ${jsonDecode(jsonEncode(event.snapshot.value))} \n");
        //   // }

        //   // for (var key in event.snapshot.children) {
        //   //   print(key.value);
        //   // }
        // });
      } catch (err) {
        print(err);
      }
    })();
  }

  @override
  void onClose() {
    super.onClose();
    inputColumnController.dispose();
  }

  sendMessage() {
    if (inputColumnController.text.isEmpty) {
      return;
    }
    var orderData = jsonDecode(jsonEncode(Get.arguments));
    print(orderData);
    print(orderData['user']);
    print("SENDING A MESSAGE");
    var timeStamp = DateTime.now().millisecondsSinceEpoch;
    print("TIMESTAMP: ${timeStamp}");
    var messagePayload = {
      "message": inputColumnController.text,
      "sender_id": orderData['user'],
      "chat_room_id": orderData['chat_room']['_id'],
      "astro_order_id": orderData['_id'],
      "timestamp": timeStamp,
    };

    print(messagePayload);

    var prefix =
        db_prefix + "/${orderData['chat_room']['_id']}" + "/${timeStamp}";
    print("prefix: ${prefix}");
    rtdb!.ref(prefix).set(messagePayload);
    inputColumnController.clear();
  }
}
