import 'package:flutter/material.dart';

class DiscoverYourselfPage extends StatelessWidget {
  const DiscoverYourselfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Discover Yourself")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Text(
            "Introduction Test",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "(What’s your loving style in a Relation)",
            style: TextStyle(color: Colors.grey),
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage("assets/images/love.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Text(
            "Introduction Assessment Test",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 10),
          const Text(
            "Take this 30 question test to reveal your loving style",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 30),
          Container(
            width: 300,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "START THE QUIZ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
