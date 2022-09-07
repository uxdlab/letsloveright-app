import 'package:flutter/material.dart';
import 'package:lets_love_right/pages/chat_page.dart';
import 'package:lets_love_right/pages/home_page.dart';
import 'package:lets_love_right/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List _pages = [
    const HomePage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  void _navigateUser(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
