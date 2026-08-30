import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_53/ep2662_community_app/ui/community_home_page.dart';

/// 커뮤니티 앱 메인 페이지 (바텀 내비게이션 바 포함)
class CommunityMainPage extends StatefulWidget {
  const CommunityMainPage({super.key});

  @override
  State<CommunityMainPage> createState() => _CommunityMainPageState();
}

class _CommunityMainPageState extends State<CommunityMainPage> {
  // 현재 선택된 하단 탭 인덱스
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // 탭 전환용 IndexedStack
      body: IndexedStack(
        index: pageNum,
        children: [
          CommunityHomePage(),
        ],
      ),
      // 하단 내비게이션 바 (Home, Player, Events, Donate, More)
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageNum,
        onTap: (idx) {
          setState(() {
            pageNum = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined),
            label: "Player",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Donate",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "More",
          ),
        ],
      ),
    );
  }
}
