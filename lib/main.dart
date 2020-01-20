import 'dart:async';
import 'package:flutter_driver/driver_extension.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutterwhatsapp/whatsapp_home.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  //TestWidgetsFlutterBinding.ensureInitialized()
  //Release application
  //WidgetsFlutterBinding.ensureInitialized();
  //Debug Application
  enableFlutterDriverExtension();
  cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WhatsApp",
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(cameras:cameras),
    );
  }
}
