import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lets_love_right/components/chat_ui.dart';
import 'package:lets_love_right/components/side_drawer.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final user = FirebaseAuth.instance.currentUser!;
  FirebaseFirestore db = FirebaseFirestore.instance;

  List _dataList = [];

  _readData() async {
    final userId = user.uid;
    final docRef =
        db.collection("connection").where("users", arrayContains: userId);
    QuerySnapshot querySnapshot = await docRef.get();
    final arr = querySnapshot.docs.map((doc) => doc.data()).toList();

    List allData = [];

    for (var element in arr) {
      final Map data = element as Map<String, dynamic>;
      data["users"].removeWhere((str) {
        return str == userId;
      });
      allData.add(data);
    }

    setState(() {
      _dataList = allData;
    });
  }

  @override
  void initState() {
    _readData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_dataList.isEmpty) {
      return const Center(
        child: Text("No Connection Found"),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Messages")),
      drawer: const SideDrawer(),
      body: ListView.builder(
        itemCount: _dataList.length,
        itemBuilder: (e, index) {
          final String user = _dataList[index]["users"][0];
          return ChatUserCard(
            uid: user,
            name: _dataList[index][user]["name"],
            image: _dataList[index][user]["imageUrl"],
          );
        },
      ),
    );
  }
}

class ChatUserCard extends StatelessWidget {
  const ChatUserCard({
    Key? key,
    required this.image,
    required this.name,
    required this.uid,
  }) : super(key: key);

  final String image;
  final String name;
  final String uid;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ChatUIPage(
              userId: uid,
              userName: name,
            ),
          ),
        );
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(image),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
