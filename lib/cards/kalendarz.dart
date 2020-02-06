import 'package:flutter/material.dart';

class KalendarzPage extends StatefulWidget {
  KalendarzPage({Key key}) : super(key: key);

  @override
  _KalendarzPageState createState() => _KalendarzPageState();
}

class _KalendarzPageState extends State<KalendarzPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalendarz', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.amberAccent,
        brightness: Brightness.light,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    );
  }
}
