import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.orange[300],
          Colors.blue[200],
        ])),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 280.0),
                _buildTextField('Username', _usernameController, false,
                    icon: Icon(Icons.supervised_user_circle)),
                SizedBox(height: 10.0),
                _buildTextField('Password', _passwordController, true,
                    icon: Icon(Icons.lock)),
                SizedBox(height: 5.0),
                _buildButtonBar(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonBar() {
    return Container(

      child: Row(
        children: <Widget>[
          RaisedButton(
            child: Text('Next'),
            elevation: 2.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            highlightColor: Colors.amber,
            onPressed: () {},
            // onPressed: (){
            //   Navigator.pop(context);
            // },
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(
      String label, TextEditingController controller, bool isPassword,
      {Icon icon}) {
    // textField.focusNode.addListener(() {
    //   print('focus');
    // });
    return Theme(
      data: Theme.of(context).copyWith(primaryColor: Colors.amber),
      child: TextField(
        style: TextStyle(fontSize: 18.0, height: 1.5),
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          labelText: label,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          contentPadding: EdgeInsets.all(10),
        ),
        obscureText: isPassword,
      ),
    );
  }
}

