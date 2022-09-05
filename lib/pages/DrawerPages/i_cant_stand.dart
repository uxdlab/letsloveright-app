import 'package:flutter/material.dart';

class ICantStandPage extends StatelessWidget {
  const ICantStandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("I Can't Stand")),
      body: const Center(
        child: Text("I Can't Stand"),
      ),
    );
  }
}
