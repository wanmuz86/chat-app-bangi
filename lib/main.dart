import 'package:chat_app/chat_list.dart';
import 'package:chat_app/forgot_password.dart';
import 'package:chat_app/register.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Column(
        children: <Widget>[
          Text("Chat app!"),
          Image.network("https://toppng.com/uploads/preview/live-chat-logo-11549838701ncylo0na9k.png", height: 100,),
          TextField(
            decoration: InputDecoration(
              hintText: "Email"
            ),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Password"
            ),
          ),
          FlatButton(
            child: Text("Login"),
            color: Colors.red,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatList()),
              );
            },
          ),
          FlatButton(
            child: Text("Sign Up?"),
            color: Colors.blue,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            },
          ),
          FlatButton(
            child: Text("Forgot password"),
            color: Colors.blue,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPassword()),
              );
            },
          )

        ],
      ),
    );
  }
}

