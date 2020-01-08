import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'rpiCamera.dart';
import 'analogThumbStick.dart';
import 'login.dart';
import 'splashScreen.dart';
import 'cards/loginPage.dart';

//void main() => runApp(LoginScreen());

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: CupertinoDynamicColor.withBrightness(
          color: Colors.transparent, darkColor: Colors.transparent),
      //statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
    ),
  );

  runApp(TestingLogin());
}

class TestingLogin extends StatelessWidget {
  const TestingLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          accentColor: Colors.amberAccent, primaryColor: Colors.black),
      home: LoginPage(),
    );
  }
}

class TestingSplashScreen extends StatelessWidget {
  const TestingSplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        extendBodyBehindAppBar: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text('Remote Control'),
          bottomOpacity: 50.0,
        ),
        //body: LoginScreen(),
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 255,
                child: MyWebView(
                  title: "TutiBotView",
                  selectedUrl:
                      //"http://pop-os:8080/stream?topic=/cv_camera/image_raw",
                      //"http://pop-os:8080/stream?topic=/cv_camera/image_raw&type=mjpeg&quality=100&width=640&height=400&default_transport=compressed",
                      //'http://192.168.1.11:8080/stream_viewer?topic=/cv_camera/image_raw&type=mjpeg&quality=100&width=640&height=400&default_transport=compressed',
                      'http://192.168.1.11:8080/stream?topic=/cv_camera/image_raw&type=mjpeg&quality=100&width=640&height=400&default_transport=compressed',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 350,
                child: AnalogThumbStick(
                  baseSize: 300,
                  stickSize: 100,
                  onStickMove: (offset) {
                    print(offset.dx);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
