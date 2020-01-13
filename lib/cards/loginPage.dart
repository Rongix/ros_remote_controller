import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(),
                          child: Icon(
                            Icons.android,
                            size: 60,
                            color: Colors.amber,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontFamily: "RobotoMono",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    style: TextStyle(fontSize: 18.0, height: 1.5),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.supervised_user_circle),
                      labelText: "Nazwa użytkownika",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      contentPadding: EdgeInsets.all(10),
                    ),
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    style: TextStyle(fontSize: 18.0, height: 1.5),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.lock),
                      labelText: "Hasło",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      contentPadding: EdgeInsets.all(10),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.amber,
                    ),
                    child: Center(
                      child: Text("Zaloguj",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
