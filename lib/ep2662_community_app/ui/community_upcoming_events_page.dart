import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// 커뮤니티 앱 예정된 이벤트 목록 화면
class CommunityUpcomingEventsPage extends StatefulWidget {
  const CommunityUpcomingEventsPage({super.key});

  @override
  State<CommunityUpcomingEventsPage> createState() =>
      _CommunityUpcomingEventsPageState();
}

class _CommunityUpcomingEventsPageState
    extends State<CommunityUpcomingEventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 248, 250, 1),
      // 상단 앱바 (뒤로가기, 타이틀, 알림 뱃지)
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Upcoming events"),
        actionsPadding: const EdgeInsets.only(right: 16),
        actions: const [
          Badge(
            label: Text("2"),
            child: Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          // 이벤트 검색창 및 필터 아이콘 버튼
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: ShapeDecoration(
              shape: const StadiumBorder(),
              color: Colors.white,
              shadows: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .1),
                  blurRadius: 3,
                  spreadRadius: 1,
                ),
              ],
            ),
            padding: const EdgeInsets.only(left: 16),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: "Search for events",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const VerticalDivider(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.tune),
                  ),
                ],
              ),
            ),
          ),

          // 카테고리 필터 칩 가로 리스트
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              height: 34,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(47, 92, 222, 1),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    margin: const EdgeInsets.only(right: 8),
                    child: const Center(
                      child: Text(
                        "All",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Center(
                      child: Text(
                        "Quran Tafsir",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    margin: const EdgeInsets.only(right: 8),
                    child: const Center(
                      child: Text(
                        "Quran Study",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    margin: const EdgeInsets.only(right: 8),
                    child: const Center(
                      child: Text(
                        "Women Exclusive",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(12),

          // 이벤트 카드 세로 리스트뷰
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  height: 320,
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[100]!,
                        spreadRadius: 4,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 이벤트 이미지 영역 및 북마크 버튼
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 12,
                                top: 12,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white24,
                                    ),
                                    color: Colors.black26,
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: const Icon(
                                    Icons.bookmark_border_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 이벤트 상세 정보 (제목, 위치, 시간)
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 4,
                          children: [
                            const Text(
                              "Ramadan ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              spacing: 4,
                              children: const [
                                Expanded(
                                  child: Row(
                                    spacing: 4,
                                    children: [
                                      Icon(
                                        Icons.location_on_rounded,
                                        size: 16,
                                        color: Color.fromRGBO(
                                          47,
                                          92,
                                          222,
                                          1,
                                        ),
                                      ),
                                      Text("Unknown, Earth"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    spacing: 4,
                                    children: [
                                      Icon(
                                        Icons.access_time_filled,
                                        size: 16,
                                        color: Color.fromRGBO(
                                          47,
                                          92,
                                          222,
                                          1,
                                        ),
                                      ),
                                      Text("7:25 PM"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
