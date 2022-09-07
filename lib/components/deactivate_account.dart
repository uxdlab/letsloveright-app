import 'package:flutter/material.dart';

class DeactivateAccount extends StatelessWidget {
  const DeactivateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Deactivate Account")),
      body: const Center(
        child: Text("Deactivate Account"),
      ),
    );
  }
}
