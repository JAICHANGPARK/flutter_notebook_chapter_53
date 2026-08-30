import 'package:flutter/material.dart';

/// 운동 일정 추가 화면
class FitnessAddSchedulePage extends StatefulWidget {
  const FitnessAddSchedulePage({super.key});

  @override
  State<FitnessAddSchedulePage> createState() => _FitnessAddSchedulePageState();
}

class _FitnessAddSchedulePageState extends State<FitnessAddSchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: .start,
            spacing: 24,
            children: [
              // 상단 앱바 (뒤로가기, 타이틀, 더보기 메뉴)
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white12,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.arrow_back_outlined),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Add Schedule",
                        style: TextStyle(
                          fontWeight: .bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white12,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.more_vert),
                  ),
                ],
              ),

              // 일정 제목 입력 섹션
              Column(
                crossAxisAlignment: .start,
                spacing: 8,
                children: [
                  Text(
                    "Schedule Title",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Container(
                    padding: .symmetric(horizontal: 24, vertical: 4),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.white24),
                      ),
                      color: Color.fromRGBO(24, 24, 24, 1),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: .none,
                        hintText: "Enter schedule name",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),

              // 운동 종목/활동 선택 그리드
              Column(
                crossAxisAlignment: .start,
                spacing: 6,
                children: [
                  Text(
                    "Choose Activity",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedSuperellipseBorder(
                        borderRadius: .circular(24),
                      ),
                      color: Colors.white12,
                    ),
                    height: 200,
                    padding: .all(16),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      itemBuilder: (context, index) {
                        return CircleAvatar(backgroundColor: Colors.black);
                      },
                    ),
                  ),
                ],
              ),

              // 요일 선택 섹션 (일 ~ 토)
              Column(
                spacing: 8,
                crossAxisAlignment: .start,
                children: [
                  Text("Select Days", style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 62,
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(221, 238, 94, 1),
                            ),
                            child: Center(child: Text("S")),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "M",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(221, 238, 94, 1),
                            ),
                            child: Center(child: Text("T")),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "W",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(221, 238, 94, 1),
                            ),
                            child: Center(child: Text("T")),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "F",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "S",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // 반복 주기 설정 섹션 (매일/매주/매월/매년)
              Column(
                spacing: 8,
                crossAxisAlignment: .start,
                children: [
                  Text("Repeat", style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 42,
                    child: Row(
                      spacing: 8,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(221, 238, 94, 1),
                            ),
                            child: Center(
                              child: Text(
                                "Daily",
                                style: TextStyle(fontWeight: .bold),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "Weekly",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "Monthly",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "Yearly",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // 매일 반복 여부 스위치
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("Every Days", style: TextStyle(color: Colors.white)),
                  Switch(value: false, onChanged: (v) {}),
                ],
              ),

              // 알림 시간 설정
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("Remind me", style: TextStyle(color: Colors.white)),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(26, 26, 26, 1),
                    ),
                    padding: .symmetric(horizontal: 24, vertical: 8),
                    child: Center(
                      child: Text(
                        "06:00 am",
                        style: TextStyle(
                          color: Colors.white24,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: .circular(16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
