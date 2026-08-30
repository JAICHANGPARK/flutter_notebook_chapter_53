import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_53/ep2651_fitness_app/ui/fitness_add_schedule_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

/// 피트니스 앱 메인 홈 화면
class FitnessHomePage extends StatefulWidget {
  const FitnessHomePage({super.key});

  @override
  State<FitnessHomePage> createState() => _FitnessHomePageState();
}

class _FitnessHomePageState extends State<FitnessHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          spacing: 16,
          crossAxisAlignment: .start,
          children: [
            // 상단 앱바 영역 (뒤로가기, 타이틀, 더보기 메뉴)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white12,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.arrow_back_outlined),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Workout sets",
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
            ),

            // 스크롤 가능한 본문 영역
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: .start,
                  children: [
                    // 진행 상황 요약 카드 (배경 장식원, 진행률, 칼로리 소모량 표시)
                    Container(
                      height: 220,
                      clipBehavior: .antiAliasWithSaveLayer,
                      margin: .symmetric(horizontal: 16),
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: .circular(24),
                        ),
                        color: Color.fromRGBO(221, 238, 94, 1),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 16,
                            top: 16,
                            bottom: 16,
                            right: 16,
                            child: Column(
                              spacing: 12,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  "Progress",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text(
                                      "Lower Body",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      "Cardio    10 mins",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),

                                // 칼로리 소모량 뱃지 및 액션 버튼
                                Row(
                                  crossAxisAlignment: .start,
                                  spacing: 4,
                                  children: [
                                    Container(
                                      margin: .only(top: 8),
                                      decoration: ShapeDecoration(
                                        shape: StadiumBorder(),
                                        color: Colors.black,
                                      ),
                                      padding: .symmetric(
                                        horizontal: 16,
                                        vertical: 4,
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "539",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: .bold,
                                            ),
                                          ),
                                          Text(
                                            "CALORIES",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: .all(4),
                                      decoration: BoxDecoration(
                                        shape: .circle,
                                        border: .all(color: Colors.black),
                                      ),
                                      child: Icon(Icons.arrow_forward_outlined),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // 우측 상단 진행률 원형 인디케이터 (72%)
                          Positioned(
                            right: 14,
                            top: 14,
                            child: CircularPercentIndicator(
                              radius: 22,
                              progressColor: Colors.black,
                              center: Text("72%"),
                              percent: .72,
                            ),
                          ),
                          // 카드 우측 배경 동심원 장식 레이어들
                          Positioned(
                            right: -24,
                            top: -24,
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                shape: .circle,
                                border: .all(width: 16, color: Colors.black12),
                              ),
                            ),
                          ),
                          Positioned(
                            right: -52,
                            top: -52,
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                shape: .circle,
                                border: .all(width: 16, color: Colors.black12),
                              ),
                            ),
                          ),
                          Positioned(
                            right: -80,
                            top: -80,
                            child: Container(
                              height: 240,
                              width: 240,
                              decoration: BoxDecoration(
                                shape: .circle,
                                border: .all(width: 16, color: Colors.black12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // 운동 세트 카테고리 섹션 (가로 스크롤 리스트)
                    Column(
                      crossAxisAlignment: .start,
                      spacing: 6,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text(
                                "Categories of Set",
                                style: TextStyle(
                                  fontWeight: .bold,
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  foregroundColor: Color.fromRGBO(
                                    221,
                                    238,
                                    94,
                                    1,
                                  ),
                                ),
                                child: Text("See All"),
                              ),
                            ],
                          ),
                        ),
                        // 가로 스크롤 카드 리스트
                        SizedBox(
                          height: 180,
                          child: ListView.builder(
                            padding: const EdgeInsets.only(left: 16),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 180,
                                margin: .only(right: 12),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: .circular(20),
                                  ),
                                  color: Colors.grey,
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 12,
                                      left: 12,
                                      right: 12,
                                      child: Row(
                                        mainAxisAlignment: .spaceBetween,
                                        children: [
                                          Text("Fitness"),
                                          CircleAvatar(),
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

                    // 운동 목록 섹션 (세로 리스트)
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(
                            "Workout List",
                            style: TextStyle(
                              fontWeight: .bold,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Color.fromRGBO(221, 238, 94, 1),
                            ),
                            child: Text("See All"),
                          ),
                        ],
                      ),
                    ),

                    // 개별 운동 카드 목록 (탭 시 일정 추가 페이지로 이동)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: List.generate(
                          5,
                          (idx) => GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      FitnessAddSchedulePage(),
                                ),
                              );
                            },
                            child: Container(
                              decoration: ShapeDecoration(
                                shape: RoundedSuperellipseBorder(
                                  borderRadius: .circular(16),
                                  side: BorderSide(color: Colors.white24),
                                ),
                                color: Color.fromRGBO(24, 24, 24, 1),
                              ),
                              margin: .only(bottom: 16),
                              padding: .all(20),
                              child: Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    height: 54,
                                    width: 54,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: .circular(8),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: .start,
                                      spacing: 6,
                                      children: [
                                        Text(
                                          "Lower body workout",
                                          style: TextStyle(
                                            fontWeight: .bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Week 2 * 8 Tasks",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // 운동 진행률 미니 원형 인디케이터
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    radius: 20,
                                    child: CircularPercentIndicator(
                                      radius: 14,
                                      lineWidth: 3,
                                      startAngle: 240,
                                      percent: .5,
                                      progressColor: Color.fromRGBO(
                                        221,
                                        238,
                                        94,
                                        1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
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
