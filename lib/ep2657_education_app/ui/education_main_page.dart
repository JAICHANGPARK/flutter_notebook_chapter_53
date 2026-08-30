import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_53/ep2657_education_app/ui/education_calendar_page.dart';
import 'package:flutter_notebook_chapter_53/ep2657_education_app/ui/education_home_page.dart';
import 'package:hugeicons/hugeicons.dart';

/// 교육 앱 메인 셸 화면 (상단 프로필 헤더 + 탭 스택 + 하단 내비게이션 바)
class EducationMainPage extends StatefulWidget {
  const EducationMainPage({super.key});

  @override
  State<EducationMainPage> createState() => _EducationMainPageState();
}

class _EducationMainPageState extends State<EducationMainPage> {
  // 현재 선택된 하단 탭 인덱스
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          spacing: 24,
          children: [
            // 상단 프로필 및 알림 헤더 영역
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                spacing: 8,
                children: [
                  // 프로필 아바타 컨테이너
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: .circular(5),
                    ),
                  ),
                  // 사용자 환영 인사 및 레벨 정보
                  Expanded(
                    child: Column(
                      spacing: 2,
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "Hello, Dream",
                          style: TextStyle(fontWeight: .bold, fontSize: 20),
                        ),
                        Text("Level Up"),
                      ],
                    ),
                  ),
                  // 우측 상단 액션 아이콘 버튼
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: .circular(5),
                    ),
                    child: Center(
                      child: HugeIcon(icon: HugeIcons.strokeRoundedHugeicons),
                    ),
                  ),
                ],
              ),
            ),

            // 탭별 본문 화면 전환용 IndexedStack
            Expanded(
              child: IndexedStack(
                index: pageNum,
                children: [
                  EducationHomePage(),
                  EducationCalendarPage(),
                  Placeholder(),
                  Placeholder(),
                  Placeholder(),
                ],
              ),
            ),
          ],
        ),
      ),
      // 라운드 처리된 하단 내비게이션 바
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: .circular(32),
          topRight: .circular(32),
        ),
        child: SizedBox(
          height: 110,
          child: BottomNavigationBar(
            currentIndex: pageNum,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[100],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            onTap: (idx) {
              setState(() {
                pageNum = idx;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: "Calendar",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.phone),
                label: "Calls",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "Chat",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
