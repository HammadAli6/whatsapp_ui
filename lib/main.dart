import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'Home_page.dart';

List<CameraDescription> cameras = cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        hintColor: Color.fromARGB(255, 81, 87, 83),
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(cameras: cameras),
    );
  }
}
