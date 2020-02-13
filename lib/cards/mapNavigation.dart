import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thumbstick/rpiCamera.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MapPage extends StatefulWidget {
  MapPage({Key key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    // return AnnotatedRegion<SystemUiOverlayStyle>(
    //   value: SystemUiOverlayStyle(
    //       systemNavigationBarColor: Color.fromRGBO(127, 127, 127, 1)),
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Map Drive',
          style: TextStyle(color: Colors.black),
        ),
        brightness: Brightness.light,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Color.fromRGBO(127, 127, 127, 1),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Padding(
              //   padding: EdgeInsets.all(20),
              //   child: Text(
              //     "Poniżej widoczny jest widok mapy generowanej przez RViz, mapa pozwala na lokalizacje robota w przestrzeni, miejsce położenia robota oznaczono niebieskim kursorem.",
              //     style: TextStyle(fontSize: 22, color: Colors.white),
              //   ),
              // )
              //WEBVIEW HERE
              Expanded(
                child: MyWebView(
                  title: 'Map',
                  selectedUrl: 'http://192.168.43.145:1234/',
                ),
              )
              // Container(
              //   height: 600,
              //   child: WebviewScaffold(
              //     url: 'http://192.168.1.11:1234/',
              //     withJavascript: true,
              //     withZoom: true,
              //   ),
              // )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 250,
                    width: 400,
                    color: Colors.black.withAlpha(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Container(
                            child: Text(
                              "Waypoints",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                            child: ListView(
                          children: <Widget>[
                            // Row(
                            //     crossAxisAlignment: CrossAxisAlignment.center,
                            //     mainAxisAlignment:
                            //         MainAxisAlignment.spaceEvenly,
                            //     children: <Widget>[
                            //       Container(child: Center(child: Text("Pokój")))
                            //     ]),
                            // Divider(),
                            FlatButton(
                              onPressed: () {},
                              onLongPress: () {},
                              child: Text(
                                "Kuchnia",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Divider(),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                "Łazienka",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Divider(),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                "Pokój 1",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Divider(),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                "Pokój 2",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Divider(),
                            FlatButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white54,
                                )),
                            Divider(),
                          ],
                        ))
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
      // ),
    );
  }
}
