import 'package:chat_app/models/chat_message_entity.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    List<ChatMessageEntity> _messages = [
      ChatMessageEntity(
          text: "Hello, this is Houdini!",
          id: "1",
          createdAt: DateTime.now().millisecondsSinceEpoch,
          author: Author(userName: "Houdini")),
      ChatMessageEntity(
          text: "Hi Houdini!",
          imageUrl: "https://3009709.youcanlearnit.net/Alien_LIL_131338.png",
          id: "2",
          createdAt: DateTime.now().millisecondsSinceEpoch,
          author: Author(userName: "Pooja")),
      ChatMessageEntity(
          text: "Hi Pooja!",
          id: "3",
          createdAt: DateTime.now().millisecondsSinceEpoch,
          author: Author(userName: "Houdini"))
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi $username!'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
                print('Icon pressed!');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return ChatBubble(
                        alignment: _messages[index].author.userName == "Houdini"
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        //TODO: Add more chat & author related properties here
                        message: _messages[index]);
                  })),
          ChatInput(),
        ],
      ),
    );
  }
}
