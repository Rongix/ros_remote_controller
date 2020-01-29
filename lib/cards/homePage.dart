import 'package:flutter/material.dart';
import 'package:thumbstick/cards/zdrowie.dart';
import 'package:thumbstick/main.dart';

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

List<Activity> activity = [
  Activity(
      name: "Zajecia",
      icon: Icon(Icons.assignment_ind),
      backgroundColor: Colors.amberAccent[100]),
  Activity(
      name: "Zajecia3",
      icon: Icon(Icons.assignment_turned_in),
      backgroundColor: Colors.amberAccent[200]),
  Activity(
      name: "Zajecia4",
      icon: Icon(Icons.battery_full),
      backgroundColor: Colors.amberAccent[300]),
  Activity(
      name: "Zajecia5",
      icon: Icon(Icons.airline_seat_legroom_normal),
      backgroundColor: Colors.amberAccent[400]),
  Activity(
      name: "Zajecia6",
      icon: Icon(Icons.add_a_photo),
      backgroundColor: Colors.amberAccent[100]),
  Activity(
      name: "Zajecia7",
      icon: Icon(Icons.wb_iridescent),
      backgroundColor: Colors.amberAccent[200]),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              //title: Text("Tuti App Center"),
              pinned: false,
              floating: false,
              expandedHeight: 250,
              centerTitle: false,
              forceElevated: false,
              backgroundColor: Colors.grey[100],

              flexibleSpace: FlexibleSpaceBar(
                stretchModes: <StretchMode>[
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                ],
                title: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Oldi\n",
                        style:
                            TextStyle(fontSize: 30, color: Colors.grey[100])),
                    TextSpan(
                        text: "Twój Robot Asystent",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[100])),
                  ]),
                ),
                centerTitle: false,
                background: Stack(fit: StackFit.expand, children: <Widget>[
                  Image.asset(
                    'Images/robot_render.png',
                    fit: BoxFit.cover,
                    //color: Colors.white,
                    //colorBlendMode: BlendMode.softLight,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(0.0, 0.9),
                            end: Alignment(0.0, 0.0),
                            colors: <Color>[
                          Colors.black26,
                          Colors.transparent
                        ])),
                  )
                ]),
                // background: Image.network(
                //     "https://previews.123rf.com/images/kurhan/kurhan1412/kurhan141200274/34363343-happy-people-.jpg",
                //     fit: BoxFit.cover),

                //centerTitle: true,
                //titlePadding: EdgeInsets.all(65),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text("Aktywności",
                      style: TextStyle(
                        fontSize: 20,
                        //color: Colors.grey,
                      ))),
            ),
            // GRID ACTIVITIES
            SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: 1.3,
              children: [
                FlatButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.red[100],
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ZdrowiePage()));
                    },
                    //color: Colors.grey[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          size: 70,
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Zdrowie",
                          //style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
                FlatButton(
                    //color: Colors.grey[100],
                    highlightColor: Colors.transparent,
                    splashColor: Colors.blue[100],
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.local_drink,
                          size: 65,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Woda",
                          //style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
                FlatButton(
                    //color: Colors.grey[150],
                    highlightColor: Colors.transparent,
                    splashColor: Colors.amber[100],
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today,
                          size: 65,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Kalendarz",
                          //style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
                FlatButton(
                    //color: Colors.grey[100],
                    highlightColor: Colors.transparent,
                    splashColor: Colors.green[100],
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.directions_bike,
                          size: 65,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Sport",
                          //style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
              ],
            ),

            // GRID HELP OPTIONS
            SliverToBoxAdapter(child: Divider(height: 1, thickness: 1)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text("Wezwij Pomoc!",
                      style: TextStyle(
                        fontSize: 20,
                        //color: Colors.grey,
                      ))),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: 1.3,
              children: <Widget>[
                FlatButton(
                    //color: Colors.grey[100],
                    highlightColor: Colors.transparent,
                    splashColor: Colors.red[100],
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.local_hospital,
                          size: 65,
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Pomoc",
                          //style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
              ],
            ),
            // GRID DEVELOPMENT OPTIONS
            SliverToBoxAdapter(child: Divider(height: 1, thickness: 1)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text("Opiekun",
                      style: TextStyle(
                        fontSize: 20,
                        //color: Colors.grey,
                      ))),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: 1.3,
              children: <Widget>[
                FlatButton(
                    //color: Colors.grey[50],
                    highlightColor: Colors.transparent,
                    splashColor: Colors.orangeAccent[100],
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MapPage()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.map,
                          size: 60,
                          color: Colors.orangeAccent,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mapa",
                          //style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
                //REMOTE CONTROLLER
                FlatButton(
                    //color: Colors.grey[50],
                    highlightColor: Colors.transparent,
                    splashColor: Colors.orangeAccent[100],
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RemoteController()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.android,
                          size: 55,
                          color: Colors.orangeAccent,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Robot",
                          //style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
              ],
            ),
            // SLIVER LIST EXAMPLE HERE
            // SliverToBoxAdapter(
            //   child: Container(
            //     height: 30,
            //   ),
            // ),
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     (BuildContext context, int index) {
            //       return Container(
            //         height: 100,
            //         child: Text('LIST ITEM HERE...'),
            //       );
            //     },
            //     childCount: 20,
            //     semanticIndexOffset: 2,
            //   ),
            // )
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
