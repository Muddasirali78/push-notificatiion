import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:pushnotifications/firebase_options.dart';
import 'package:pushnotifications/home.dart';
import 'package:pushnotifications/push_notofications.dart';

//fuction to list to background changes
Future _firebaseBackgroundMessage(RemoteMessage message) async {
  if (message.notification != null) {
    print("some notification received");
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  PushNotifications.intt();
  //listen to bacground changes
  FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundMessage);
  runApp(myapp());
}

class myapp extends StatelessWidget {
   myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}
