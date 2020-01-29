import 'package:flutter/material.dart';

class ZdrowiePage extends StatefulWidget {
  ZdrowiePage({Key key}) : super(key: key);

  @override
  _ZdrowiePageState createState() => _ZdrowiePageState();
}

class _ZdrowiePageState extends State<ZdrowiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zdrowie'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
