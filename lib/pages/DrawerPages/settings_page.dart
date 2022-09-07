import 'package:flutter/material.dart';
import 'package:lets_love_right/components/blocked_list.dart';
import 'package:lets_love_right/components/deactivate_account.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const BlockedListPage(),
                ),
              );
            },
            leading: const Icon(Icons.block),
            title: const Text(
              "Block List",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DeactivateAccount(),
                ),
              );
            },
            leading: const Icon(Icons.person_off_outlined),
            title: const Text(
              "Deactivate Account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
