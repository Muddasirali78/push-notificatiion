//import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:pushnotifications/firebase_options.dart';
//import 'package:pushnotifications/main.dart';

// void main() async {
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,
//   )
//   ;

//   runApp(myapp());
// }

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("push notification"),
      ),
      body: Center(child: Text("notification")),
    );
  }
}
