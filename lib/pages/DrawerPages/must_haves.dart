import 'package:flutter/material.dart';

class MustHavesPage extends StatelessWidget {
  const MustHavesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Must Haves")),
      body: const Center(
        child: Text("Must Haves"),
      ),
    );
  }
}
