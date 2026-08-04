import 'package:flutter/material.dart';

class CommunityMainPage extends StatefulWidget {
  const CommunityMainPage({super.key});

  @override
  State<CommunityMainPage> createState() => _CommunityMainPageState();
}

class _CommunityMainPageState extends State<CommunityMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.access_time_outlined), label: "Player"),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: "Events"),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: "Donate"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ],
      ),
    );
  }
}
