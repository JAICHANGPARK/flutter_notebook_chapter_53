import 'package:flutter/material.dart';

/// 회의록 앱 회의 상세 목록 화면
class MeetingNoteMeetingPage extends StatefulWidget {
  const MeetingNoteMeetingPage({super.key});

  @override
  State<MeetingNoteMeetingPage> createState() => _MeetingNoteMeetingPageState();
}

class _MeetingNoteMeetingPageState extends State<MeetingNoteMeetingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        // 상단 앱바 (뒤로가기, 타이틀, 검색)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: const Center(child: Icon(Icons.keyboard_arrow_left)),
              ),
              const Expanded(
                child: Center(
                  child: Text("Meetings", style: TextStyle(fontSize: 17)),
                ),
              ),
              Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: const Center(child: Icon(Icons.search)),
              ),
            ],
          ),
        ),

        // 필터 및 탭 바 영역
        Container(
          margin: .only(left: 16),
          height: 42,
          child: ListView(
            scrollDirection: .horizontal,
            children: [
              Container(
                padding: .symmetric(horizontal: 16, vertical: 8),
                margin: .only(right: 8),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.black,
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Icon(Icons.apps, color: Colors.white),
                    Text("All", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Container(
                padding: .symmetric(horizontal: 16, vertical: 8),
                margin: .only(right: 8),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.grey[200]!,
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Icon(Icons.timelapse, color: Colors.grey),
                    Text(
                      "Upcoming",
                      style: TextStyle(color: Colors.grey, fontWeight: .bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: .symmetric(horizontal: 16, vertical: 8),
                margin: .only(right: 8),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.grey[200]!,
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Icon(Icons.data_object, color: Colors.grey),
                    Text(
                      "Recorded",
                      style: TextStyle(color: Colors.grey, fontWeight: .bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: .symmetric(horizontal: 16, vertical: 8),
                margin: .only(right: 8),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.grey[200]!,
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Icon(Icons.person, color: Colors.grey),
                    Text(
                      "Recorded",
                      style: TextStyle(color: Colors.grey, fontWeight: .bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // 회의 목록 리스트뷰
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  height: 260,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: ShapeDecoration(
                    shape: RoundedSuperellipseBorder(
                      borderRadius: .circular(16),
                      side: BorderSide(color: Colors.grey[300]!),
                    ),
                  ),
                  padding: .all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              spacing: 12,
                              children: [
                                Text(
                                  "Product Strategy",
                                  style: TextStyle(fontWeight: .bold,
                                  fontSize: 16,),
                                ),
                                Text("11 participants 48 minutes"),
                              ],
                            ),
                          ),
                          Container(
                            padding: .symmetric(horizontal: 16, vertical: 12),
                            decoration: BoxDecoration(
                              borderRadius: .circular(6),
                              color: Colors.green[50],
                            ),
                            child: Text(
                              "Upcoming",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
