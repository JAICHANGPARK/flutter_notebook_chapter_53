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
                  child: Text(
                    "Meetings",
                    style: TextStyle(fontSize: 17),
                  ),
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
        const SizedBox(
          height: 52,
          child: Placeholder(),
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
                  child: const Placeholder(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
