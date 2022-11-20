import 'package:flutter/material.dart';

import 'chat_page.dart';
import 'login_page.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NanoChat App",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: ChatPage(),
    );
  }
}
