import 'package:flutter/material.dart';
import 'package:lets_love_right/components/chat_ui.dart';
import 'package:lets_love_right/components/side_drawer.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Messages")),
      drawer: const SideDrawer(),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (e, index) {
            return ChatList(imageNumber: index);
          }),
    );
  }
}

class ChatList extends StatelessWidget {
  const ChatList({Key? key, required this.imageNumber}) : super(key: key);

  final int imageNumber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const ChatUIPage(),
          ),
        );
      },
      child: Container(
        height: 75,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 75,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage("assets/images/model_$imageNumber.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Alexas Mansion",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "How Are You ?",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 15),
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Text(
                "2 min",
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
