import 'package:flutter/material.dart';

class WodaPage extends StatefulWidget {
  WodaPage({Key key}) : super(key: key);

  @override
  _WodaPageState createState() => _WodaPageState();
}

class _WodaPageState extends State<WodaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Woda'),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
