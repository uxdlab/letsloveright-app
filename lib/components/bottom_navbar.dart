import 'package:flutter/material.dart';
import 'package:lets_love_right/pages/chat_page.dart';
import 'package:lets_love_right/pages/home_page.dart';
import 'package:lets_love_right/pages/profile_page.dart';
import 'package:lets_love_right/components/side_drawer.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;

  final List _pages = [
    const HomePage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  final List _pageName = ["All Matches", "Messages", "Profile"];

  void _navigateUser(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageName[_selectedIndex]),
      ),
      drawer: const SideDrawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateUser,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: "",
          ),
        ],
      ),
    );
  }
}
