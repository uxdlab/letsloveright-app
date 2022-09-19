import 'package:flutter/material.dart';

class ChatUIPage extends StatelessWidget {
  const ChatUIPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chats"),
      ),
      body: const Center(
        child: Text("Chat Page"),
      ),
    );
  }
}
