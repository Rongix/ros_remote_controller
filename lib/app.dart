import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thumbstick/login.dart';
import 'rpiCamera.dart';
import 'analogThumbStick.dart';

class TutiApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    _TutiAppState createState() => _TutiAppState();
  }
}

class _TutiAppState extends State<TutiApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: CupertinoDynamicColor.withBrightness(
            color: Colors.transparent, darkColor: Colors.transparent),
        //statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.white,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TutiBotController',
      home: LoginScreen(),
    );
  }
}
