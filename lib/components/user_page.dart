import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key, required this.userName}) : super(key: key);

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userName),
      ),
      body: Center(
        child: Text(userName),
      ),
    );
  }
}
