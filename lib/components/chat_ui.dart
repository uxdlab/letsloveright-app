import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatUIPage extends StatefulWidget {
  const ChatUIPage({
    Key? key,
    required this.userId,
    required this.userName,
  }) : super(key: key);

  final String userId;
  final String userName;

  @override
  State<ChatUIPage> createState() => _ChatUIPageState();
}

class _ChatUIPageState extends State<ChatUIPage> {
  final _formKey = GlobalKey<FormState>();
  FirebaseFirestore db = FirebaseFirestore.instance;
  final _uid = FirebaseAuth.instance.currentUser!.uid;
  final TextEditingController _msg = TextEditingController();

  String _docId = "";
  dynamic _data = {};
  Map _userOne = {};
  Map _userTwo = {};

  _submitMsg() {
    final one = widget.userId;
    final two = _uid;

    if (_data == null) {
      db.collection("chats").doc(_docId).set({
        "users": [one, two],
        "msg": [
          {
            "content": _msg.text,
            "senderId": two,
          },
        ]
      });

      db.collection("connection").add({
        "users": [one, two],
        one: _userOne,
        two: _userTwo,
      });
    } else {
      db.collection("chats").doc(_docId).update({
        "msg": FieldValue.arrayUnion([
          {
            "content": _msg.text,
            "senderId": two,
          }
        ]),
      });
    }

    setState(() {
      _msg.text = "";
    });
  }

  _genDocId() {
    final one = widget.userId;
    final two = _uid;

    _docId = one.compareTo(two) < 0 ? "$one+$two" : "$two+$one";

    db.collection("users").doc(one).get().then((DocumentSnapshot doc) {
      _userOne = doc.data() as Map<String, dynamic>;
    });

    db.collection("users").doc(two).get().then((DocumentSnapshot doc) {
      _userTwo = doc.data() as Map<String, dynamic>;
    });
  }

  @override
  void initState() {
    _genDocId();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
      stream: db.collection("chats").doc(_docId).snapshots(),
      builder: (context, snapshot) {
        _data = snapshot.data?.data();

        return Scaffold(
          appBar: AppBar(
            title: Text(widget.userName),
          ),
          body: Column(
            children: [
              Expanded(
                child: _data == null
                    ? const Center(
                        child: Text("No Messages Found"),
                      )
                    : ListView.builder(
                        itemCount: _data["msg"].length,
                        itemBuilder: (e, index) {
                          return MessageText(
                            userId: _uid,
                            msgId: _data["msg"][index]["senderId"],
                            text: _data["msg"][index]["content"],
                          );
                        },
                      ),
              ),
              Form(
                key: _formKey,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email_outlined),
                          border: InputBorder.none,
                          hintText: "Type Here",
                        ),
                        controller: _msg,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your message";
                          }
                          return null;
                        },
                      ),
                    ),
                    IconButton(
                      color: Colors.teal,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _submitMsg();
                        }
                      },
                      icon: const Icon(Icons.send),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class MessageText extends StatelessWidget {
  const MessageText({
    Key? key,
    required this.userId,
    required this.msgId,
    required this.text,
  }) : super(key: key);

  final String userId;
  final String msgId;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          msgId == userId ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.25,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.purple[100],
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(2, 2),
                blurRadius: 4,
              ),
            ],
            borderRadius: msgId == userId
                ? const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
                : const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
