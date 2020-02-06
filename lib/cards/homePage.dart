import 'package:flutter/material.dart';
import 'package:thumbstick/cards/sport.dart';
import 'package:thumbstick/cards/woda.dart';
import 'package:thumbstick/cards/zdrowie.dart';
import 'package:thumbstick/main.dart';

import 'kalendarz.dart';
import 'mapNavigation.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class Activity {
  Activity({
    @required this.name,
    @required this.icon,
    this.backgroundImage,
    this.backgroundColor,
  });

  final String name;
  final Icon icon;
  final Image backgroundImage;
  final Color backgroundColor;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            floating: false,
            expandedHeight: 250,
            centerTitle: false,
            forceElevated: false,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            brightness: Brightness.light,
            //actionsIconTheme: IconThemeData(color: Colors.black),
            iconTheme: IconThemeData(color: Colors.black),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.info),
                  padding: EdgeInsets.only(right: 20),
                  onPressed: () {
                    showInfo(context);
                  }),
            ],
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: <StretchMode>[
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              title: RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Oldi\n",
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                  TextSpan(
                      text: "Twój Robot Asystent",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ]),
              ),
              centerTitle: false,
              background: Stack(fit: StackFit.expand, children: <Widget>[
                Image.asset(
                  'Images/robot_render.png',
                  fit: BoxFit.cover,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(0.0, 0.9),
                          end: Alignment(0.0, 0.0),
                          colors: <Color>[Colors.black38, Colors.transparent])),
                )
              ]),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          ActivityHeader(activityName: "Aktywności", fontSize: 22, spacing: 30),
          SliverGrid.count(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            children: [
              ActivityButton(
                  splashColor: Colors.red[100],
                  icon: Icon(Icons.favorite, size: 70, color: Colors.red),
                  label: "Zdrowie",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ZdrowiePage()));
                  }),
              ActivityButton(
                  splashColor: Colors.blue[100],
                  icon: Icon(Icons.local_drink,
                      size: 65, color: Colors.blueAccent),
                  label: "Woda",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WodaPage()));
                  }),
              ActivityButton(
                  splashColor: Colors.amber[100],
                  icon:
                      Icon(Icons.calendar_today, size: 65, color: Colors.amber),
                  label: "Kalendarz",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KalendarzPage()));
                  }),
              ActivityButton(
                  splashColor: Colors.green[100],
                  icon: Icon(Icons.directions_bike,
                      size: 65, color: Colors.green),
                  label: "Sport",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SportPage()));
                  }),
            ],
          ),
          SliverToBoxAdapter(child: Divider(height: 1, thickness: 1)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          ActivityHeader(
              activityName: "Wezwij Pomoc!", fontSize: 22, spacing: 30),
          SliverGrid.count(
            crossAxisCount: 1,
            childAspectRatio: 2.5,
            children: <Widget>[
              ActivityButton(
                  splashColor: Colors.red[100],
                  icon: Icon(Icons.local_hospital, size: 65, color: Colors.red),
                  label: "Pomoc",
                  onPressed: () {
                    callForHelp(context);
                  }),
            ],
          ),
          SliverToBoxAdapter(child: Divider(height: 1, thickness: 1)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          ActivityHeader(activityName: "Opiekun", fontSize: 22, spacing: 30),
          SliverGrid.count(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            children: <Widget>[
              ActivityButton(
                  splashColor: Colors.orangeAccent[100],
                  icon: Icon(Icons.map, color: Colors.orangeAccent, size: 60),
                  label: "Mapa",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapPage(),
                        ));
                  }),
              ActivityButton(
                  splashColor: Colors.orangeAccent[100],
                  icon:
                      Icon(Icons.android, size: 55, color: Colors.orangeAccent),
                  label: "Robot",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RemoteController()));
                  }),
              //REMOTE CONTROLLER
            ],
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 1),
          ),
        ],
      ),
    );
  }
}

void callForHelp(BuildContext context) {
  var dialog = AlertDialog(
    title: Text("Wzywam Pomoc!"),
    content: Text("Pomoc zostanie wezwana automatycznie.Zachowaj spokój."),
    actions: <Widget>[
      FlatButton(
          child: const Text('Odwołaj'),
          onPressed: () {
            Navigator.of(context).pop();
          }),
      FlatButton(
          child: const Text('Akceptuj'),
          onPressed: () {
            Navigator.of(context).pop();
          })
    ],
  );
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return dialog;
      });
}

void showInfo(BuildContext context) {
  var dialog = AlertDialog(
    title: Text("Informacja"),
    content: Text(
        "Aplikacja została wykonana w ramach projektu PBL 2019/2020:\nROBO-asystent jako element wyposażenia centrum kontroli osoby starszej.\n\nZespół projektu:\n\nIwona Chuchnowska\nAgnieszka Labus\nKatarzyna Białas\nPatrycja Dapa\nWiktoria Dziaduła\nPaweł Franitza\nSandra Niedzwiedź\nMichał Skolarczyk\nSandra Sładczyk"),
    actions: <Widget>[
      FlatButton(
          child: const Text('Zamknij'),
          onPressed: () {
            Navigator.of(context).pop();
          }),
    ],
  );
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return dialog;
      });
}

class ActivityHeader extends StatelessWidget {
  final String activityName;
  final double fontSize;
  final double spacing;

  ActivityHeader({
    @required this.activityName,
    @required this.fontSize,
    @required this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      SizedBox(height: spacing),
      Text(activityName, style: TextStyle(fontSize: fontSize)),
      SizedBox(height: spacing)
    ]));
  }
}

class ActivityButton extends StatefulWidget {
  final Color splashColor;
  final VoidCallback onPressed;
  final Icon icon;
  final String label;

  ActivityButton(
      {Key key, this.splashColor, this.onPressed, this.icon, this.label})
      : super(key: key);

  @override
  _ActivityButtonState createState() => _ActivityButtonState();
}

class _ActivityButtonState extends State<ActivityButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      highlightColor: Colors.transparent,
      splashColor: widget.splashColor,
      onPressed: widget.onPressed,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            widget.icon,
            SizedBox(height: 10),
            Text(widget.label)
          ]),
    );
  }
}
