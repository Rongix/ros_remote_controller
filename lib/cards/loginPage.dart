import 'package:flutter/material.dart';
import 'package:thumbstick/my_flutter_app_icons.dart';
import 'homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscurePassword;
  // Validate password with form
  final _formValidateLogin = GlobalKey<FormState>();

  @override
  void initState() {
    obscurePassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Form(
          autovalidate: false,
          key: _formValidateLogin,
          child: ListView(
            padding: EdgeInsets.all(30),
            children: <Widget>[
              SizedBox(
                height: 110,
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
                              "Oldi",
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Zaloguj się",
                              style: TextStyle(color: Colors.black38),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      style: TextStyle(),
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.supervised_user_circle),
                        labelText: "Nazwa użytkownika",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        contentPadding: EdgeInsets.all(10),
                      ),
                      validator: (val) =>
                          val.length == 0 ? 'Wprowadź nazwę użytkownika' : null,
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      style: TextStyle(),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              obscurePassword = !obscurePassword;
                            });
                          },
                        ),
                        labelText: "Hasło",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        contentPadding: EdgeInsets.all(10),
                      ),
                      validator: (val) => val.length < 6
                          ? 'Hasło musi mieć conajmniej 6 znaków'
                          : null,
                      obscureText: obscurePassword,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Colors.amberAccent,
                      child: Container(
                        height: 40,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(50),
                        //   color: Colors.amberAccent,
                        // ),
                        child: Center(
                          child: Text(
                            "Zaloguj",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (_formValidateLogin.currentState.validate()) {
                          _formValidateLogin.currentState.save();
                          Scaffold.of(_formValidateLogin.currentContext)
                              .showSnackBar(
                            SnackBar(
                              content: Text('Turning on robots',
                                  textAlign: TextAlign.center),
                            ),
                          );
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        "Nie masz konta?",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Colors.amberAccent,
                      child: Container(
                        height: 40,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(50),
                        //   color: Colors.amber[200],
                        // ),
                        child: Center(
                          child: Text(
                            "Zarejestruj się",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(MyFlutterApp.twitter_brands),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(MyFlutterApp.facebook_brands),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(MyFlutterApp.google_brands),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
