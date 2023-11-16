import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_aws_notification/clicked_screen.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async{
  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
}

class FirebaseApi{
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    final token = await _firebaseMessaging.getToken();
    print('Token: ${token}');
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }

  Future<void> initNotificationOneSignal() async{
    //Remove this method to stop OneSignal Debugging
    //OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

    OneSignal.initialize("960b662f-d320-46a9-9bc5-7bab8dd4c07b");

    OneSignal.Notifications.requestPermission(true);
    OneSignalNotifications().addClickListener((event) {
      OSNotification notification = event.notification;
      String? addsData = notification.additionalData.toString();
      if (addsData.contains("signal06")) {
        Get.to(() => ClickedScreen());
      }
      // OneSignalNotifications().addForegroundWillDisplayListener((event) {
      //   OSNotification notification = event.notification;
      //   String? title = notification.title;
      //   String? notID = notification.notificationId;
      //   String? addsData = notification.additionalData.toString();
      //
      //   OneSignalNotifications().addClickListener((observerClick) {
      //     if (addsData.contains("signal06")) {
      //       Get.to(ClickedScreen());
      //     }
      //   });
      // });
    });

    }
}