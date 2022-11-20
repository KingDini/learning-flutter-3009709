import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "NanoChat App",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: LoginPage(),
    );
  }
}
