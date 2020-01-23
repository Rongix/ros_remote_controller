import 'package:flutter/material.dart';
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
  var _display = false;

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
              centerTitle: true,
              forceElevated: false,
              onStretchTrigger: () {
                _display = true;
              },
              stretchTriggerOffset: 1,
              title: Text("Wybierz aktywność",
                  style: TextStyle(
                      color: _display ? Colors.black : Colors.transparent)),

              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "OldiCenter",
                  style: TextStyle(color: Colors.white),
                ),
                centerTitle: true,
                background: Image.asset(
                  'Images/robot_render.png',
                  fit: BoxFit.cover,
                  //color: Colors.white,
                  //colorBlendMode: BlendMode.softLight,
                ),
                // background: Image.network(
                //     "https://previews.123rf.com/images/kurhan/kurhan1412/kurhan141200274/34363343-happy-people-.jpg",
                //     fit: BoxFit.cover),

                //centerTitle: true,
                //titlePadding: EdgeInsets.all(65),
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              children: [
                FlatButton(
                    //color: Colors.grey[50],
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.people,
                          size: 40,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Drink Water"),
                      ],
                    )),
                FlatButton(
                    //color: Colors.grey[100],
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.whatshot,
                          size: 40,
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Drink Water"),
                      ],
                    )),
                FlatButton(
                    //color: Colors.grey[150],
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.call,
                          size: 40,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Drink Water"),
                      ],
                    )),
                //REMOTE CONTROLLER
                FlatButton(
                    //color: Colors.grey[50],
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RemoteController()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.android,
                            size: 40,
                            color: Colors.black45,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Drive"),
                      ],
                    )),
                FlatButton(
                    //color: Colors.grey[50],
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MapPage()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.map,
                          size: 40,
                          color: Colors.orange[300],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Map Navigation"),
                      ],
                    )),
                FlatButton(
                    //color: Colors.grey[100],
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.color_lens,
                          size: 40,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Drink Water"),
                      ],
                    )),
                FlatButton(
                    //color: Colors.grey[100],
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          size: 40,
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("RoboFeel"),
                      ],
                    )),
                FlatButton(
                    //color: Colors.grey[50],
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.battery_unknown,
                          size: 40,
                          color: Colors.green[100],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("RoboHealth"),
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
          ],
        ),
      ),
    );
  }
}
