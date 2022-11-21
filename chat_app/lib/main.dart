import 'package:chat_app/chat_page.dart';
import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          appBarTheme: AppBarTheme(foregroundColor: Colors.black)),
      initialRoute: "/",
      routes: {"/": (context) => LoginPage(), "/chat": (context) => ChatPage()},
    );
  }
}
