import 'package:flutter/material.dart';

class BlockedListPage extends StatelessWidget {
  const BlockedListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Blocked List")),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (e, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                leading: Container(
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("assets/images/model_$index.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: const Text(
                  "Alexas Mansion",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: const Icon(Icons.navigate_next),
              ),
            );
          }),
    );
  }
}
