import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Username"
            ),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Password"
            ),
          ),
          FlatButton(
            child: Text("Register"),
            onPressed: (){

            },
          )
        ],
      ),
    );
  }
}
