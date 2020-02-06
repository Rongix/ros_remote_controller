import 'package:flutter/material.dart';

class SportPage extends StatefulWidget {
  SportPage({Key key}) : super(key: key);

  @override
  _SportPageState createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sport'),
        backgroundColor: Colors.green,
      ),
    );
  }
}
