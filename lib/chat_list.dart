import 'package:chat_app/chat_detail.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  List<String> users = [
    "Aiman",
    "Zain",
    "Soo Tek Wei",
    "Nabil"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: ListView.builder(
        itemCount: users.length,
          itemBuilder: (context,position){
        return ListTile(
          title: Text(users[position]),
          trailing: Icon(Icons.keyboard_arrow_right),
onTap: (){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ChatDetail()),
  );
},
        );
      }),
    );
  }
}
