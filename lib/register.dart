import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  // We will link this controller with the textfield
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: emailController,
            decoration: InputDecoration(hintText: "Email"),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(hintText: "Password"),
          ),
          FlatButton(
            child: Text("Register"),
            onPressed: () async {
              print(emailController.text);
              print(passwordController.text);
              FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
                      email: emailController.text.trim(),
                      password: passwordController.text))
                  .user;
              if (user != null) {
                print("Success");
              } else {
                print("fail");
              }
            },
          )
        ],
      ),
    );
  }
}
