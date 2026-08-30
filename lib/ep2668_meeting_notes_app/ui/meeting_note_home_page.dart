import 'package:avatar_stack/avatar_stack.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:material_ui/material_ui.dart';

import 'meeting_note_meeting_page.dart';

/// 회의록 앱 홈 화면 (상단 프로필/검색, AI 질의 배너, 다가오는 회의 목록, 하단 커스텀 네비게이션)
class MeetingNoteHomePage extends StatefulWidget {
  const MeetingNoteHomePage({super.key});

  @override
  State<MeetingNoteHomePage> createState() => _MeetingNoteHomePageState();
}

class _MeetingNoteHomePageState extends State<MeetingNoteHomePage> {
  // 현재 선택된 하단 탭 인덱스
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: IndexedStack(
                index: pageNum,
                children: [
                  Column(
                    spacing: 24,
                    children: [
                      // 상단 사용자 프로필 및 검색/알림 아이콘 헤더
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          spacing: 8,
                          children: [
                            const CircleAvatar(),
                            const Expanded(child: Text("Hi Dream Walker")),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[400]!),
                              ),
                              child: const Icon(Icons.search),
                            ),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[400]!),
                              ),
                              child: const Icon(
                                Icons.notifications_none_outlined,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // 회의 AI 검색 및 질문 제안 배너
                      Container(
                        decoration: ShapeDecoration(
                          shape: RoundedSuperellipseBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          color: Colors.grey[50]!,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          spacing: 12,
                          children: [
                            const CircleAvatar(radius: 24),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('What do you want to know?'),
                                  Text("Ask anything about your meetings"),
                                ],
                              ),
                            ),
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.arrow_forward_outlined),
                            ),
                          ],
                        ),
                      ),

                      // 스크롤 가능한 회의 목록 본문
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            spacing: 24,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // 다가오는 회의 수 요약 (가로 스크롤 카드)
                              Column(
                                spacing: 16,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "Upcoming",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text("View all"),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 110,
                                    child: ListView.builder(
                                      padding: const EdgeInsets.only(left: 16),
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          width: 170,
                                          margin: const EdgeInsets.only(
                                            right: 12,
                                          ),
                                          decoration: ShapeDecoration(
                                            color: Colors.grey[100],
                                            shape:
                                                RoundedSuperellipseBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              const Positioned(
                                                top: 6,
                                                right: 6,
                                                child: CircleAvatar(),
                                              ),
                                              Positioned(
                                                left: 16,
                                                bottom: 8,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                      "5",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 24,
                                                      ),
                                                    ),
                                                    Text("Today's Meetings"),
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

                              // 상세 회의 목록 (점선 테두리 및 참석자 아바타 스택 카드)
                              Column(
                                spacing: 16,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "Upcoming",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text("View all"),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: List.generate(6, (index) {
                                      return Container(
                                        decoration: ShapeDecoration(
                                          shape: RoundedSuperellipseBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          color: Colors.grey[50]!,
                                        ),
                                        margin: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          bottom: 16,
                                        ),
                                        padding: const EdgeInsets.all(12),
                                        child: DottedBorder(
                                          options:
                                              RoundedRectDottedBorderOptions(
                                            dashPattern: const [5, 5],
                                            strokeWidth: 1.5,
                                            color: Colors.grey[300]!,
                                            padding: const EdgeInsets.all(16),
                                            radius:
                                                const Radius.circular(12),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            spacing: 12,
                                            children: [
                                              const Text(
                                                'Product Strategy',
                                                style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              const Text(
                                                "Discussed onboarding redesign, enterprise pricing, and the September launch.",
                                              ),
                                              Row(
                                                spacing: 12,
                                                children: [
                                                  // 참석자 아바타 겹침 표시 (AvatarStack)
                                                  AvatarStack(
                                                    width: 140,
                                                    height: 42,
                                                    avatars: const [
                                                      NetworkImage(
                                                        "https://thispersondoesnotexist.com/random-person.jpeg",
                                                      ),
                                                      NetworkImage(
                                                        "https://thispersondoesnotexist.com/random-person.jpeg",
                                                      ),
                                                      NetworkImage(
                                                        "https://thispersondoesnotexist.com/random-person.jpeg",
                                                      ),
                                                      NetworkImage(
                                                        "https://thispersondoesnotexist.com/random-person.jpeg",
                                                      ),
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey[200]!,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                      horizontal: 16,
                                                      vertical: 12,
                                                    ),
                                                    child: const Text(
                                                      "See Details",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const MeetingNoteMeetingPage(),
                ],
              ),
            ),

            // 하단 커스텀 네비게이션 바
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 100,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .1),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 홈 탭 버튼
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          pageNum = 0;
                        });
                      },
                      child: Container(
                        height: 64,
                        width: 64,
                        decoration: ShapeDecoration(
                          shape: RoundedSuperellipseBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          color:
                              pageNum == 0 ? Colors.black : Colors.grey[200],
                        ),
                        child: Icon(
                          Icons.home_filled,
                          color: pageNum == 0 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                    // 캘린더/회의 탭 버튼
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          pageNum = 1;
                        });
                      },
                      child: Container(
                        height: 64,
                        width: 64,
                        decoration: ShapeDecoration(
                          shape: RoundedSuperellipseBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          color:
                              pageNum == 1 ? Colors.black : Colors.grey[200],
                        ),
                        child: Icon(
                          Icons.calendar_month,
                          color: pageNum == 1 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                    // 음성 녹음 탭 버튼
                    Container(
                      height: 64,
                      width: 64,
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        color: Colors.grey[200],
                      ),
                      child: const Icon(Icons.mic, color: Colors.grey),
                    ),
                    // 수신함 탭 버튼
                    Container(
                      height: 64,
                      width: 64,
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        color: Colors.grey[200],
                      ),
                      child:
                          const Icon(Icons.inbox_outlined, color: Colors.grey),
                    ),
                    // 북마크/즐겨찾기 탭 버튼
                    Container(
                      height: 64,
                      width: 64,
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        color: Colors.grey[200],
                      ),
                      child: const Icon(Icons.star_border, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
