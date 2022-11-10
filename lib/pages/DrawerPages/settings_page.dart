import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lets_love_right/pages/login_page.dart';
// import 'package:lets_love_right/components/blocked_list.dart';
// import 'package:lets_love_right/components/deactivate_account.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: Column(
        children: [
          // ListTile(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (_) => const BlockedListPage(),
          //       ),
          //     );
          //   },
          //   leading: const Icon(Icons.block),
          //   title: const Text(
          //     "Block List",
          //     style: TextStyle(
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          //   trailing: const Icon(Icons.navigate_next),
          // ),
          ListTile(
            onTap: () {
              user.delete().then((value) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LoginPage(),
                  ),
                );
              }).catchError((onError) {
                debugPrint("Error Occurred While Deleting Data");
              });
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
