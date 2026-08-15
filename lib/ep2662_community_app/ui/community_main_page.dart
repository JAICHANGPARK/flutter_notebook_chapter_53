import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_53/ep2662_community_app/ui/community_home_page.dart';

class CommunityMainPage extends StatefulWidget {
  const CommunityMainPage({super.key});

  @override
  State<CommunityMainPage> createState() => _CommunityMainPageState();
}

class _CommunityMainPageState extends State<CommunityMainPage> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(index: pageNum, children: [CommunityHomePage(),]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageNum,
        onTap: (idx) {
          setState(() {
            pageNum = idx;
          });
        },
        type: .fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined),
            label: "Player",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: "Events",),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Donate",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More",),
        ],
      ),
    );
  }
}
