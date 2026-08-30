import 'package:easy_pie_chart/easy_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

/// 교육 앱 캘린더 및 학습 현황 화면
class EducationCalendarPage extends StatefulWidget {
  const EducationCalendarPage({super.key});

  @override
  State<EducationCalendarPage> createState() => _EducationCalendarPageState();
}

class _EducationCalendarPageState extends State<EducationCalendarPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: .start,
        spacing: 24,
        children: [
          // 월별 날짜 선택 가로 캘린더 영역
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              spacing: 16,
              crossAxisAlignment: .start,
              children: [
                Text(
                  "Jun 2026",
                  style: TextStyle(fontWeight: .bold, fontSize: 22),
                ),
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(6),
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey[400]!),
                        ),
                        child: Column(
                          spacing: 5,
                          children: [
                            Text(
                              "Sun",
                              style: TextStyle(
                                fontWeight: .bold,
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(child: Text("15")),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // 현재 진행 중인 학습 코스 요약 카드
          Container(
            height: 180,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              spacing: 16,
              children: [
                // 썸네일 영역
                Container(
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.deepPurple,
                  ),
                ),
                // 코스 정보 및 진행 현황
                Expanded(
                  child: Column(
                    spacing: 12,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Trace the Route",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Row(
                                  spacing: 6,
                                  children: [
                                    Icon(Icons.image_outlined),
                                    Text("Brief 002"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(193, 212, 249, 1),
                            ),
                            child: Icon(Icons.arrow_forward_rounded),
                          ),
                        ],
                      ),
                      // 강의 재생 타임라인 및 프로그레스 바
                      Column(
                        spacing: 5,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Timeline"),
                              Text('04:25/25:25'),
                            ],
                          ),
                          LinearPercentIndicator(padding: EdgeInsets.zero),
                        ],
                      ),
                      // 평점 및 별점
                      Row(
                        children: [
                          Text('Explanation'),
                          Spacer(),
                          Row(
                            spacing: 2,
                            children: [
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(Icons.star, size: 18),
                              Icon(
                                Icons.star,
                                color: Colors.grey[300],
                                size: 18,
                              ),
                            ],
                          ),
                          Text("5.0"),
                        ],
                      ),
                      // 수강생 아바타 및 링크 복사 버튼
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(),
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                            ),
                            child: Row(
                              spacing: 2,
                              children: [
                                Icon(Icons.link, size: 16),
                                Text(
                                  "Copy link",
                                  style: TextStyle(fontSize: 13),
                                ),
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
          ),

          // 나의 활동 통계 카드 (파이 차트 및 범례)
          Container(
            height: 300,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              spacing: 12,
              children: [
                // 활동 요약 헤더 (총 학습시간, 달성률 84%)
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 4,
                        children: [
                          Text("My Activity", style: TextStyle(fontSize: 16)),
                          Row(
                            spacing: 12,
                            children: [
                              Text(
                                "36h 25m",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "84%",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.grey[300],
                      ),
                      child: Icon(Icons.more_vert),
                    ),
                  ],
                ),
                Divider(),
                // 파이 차트 및 카테고리별 달성률 범례
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      spacing: 20,
                      children: [
                        // 파이 차트
                        SizedBox(
                          width: 140,
                          child: EasyPieChart(
                            gap: 12,
                            borderWidth: 20,
                            showValue: false,
                            children: [
                              PieData(value: 30, color: Colors.black),
                              PieData(
                                value: 50,
                                color: Color.fromRGBO(157, 179, 238, 1),
                              ),
                              PieData(value: 50, color: Colors.grey[400]!),
                              PieData(value: 50, color: Colors.orange),
                            ],
                          ),
                        ),
                        // 범례 항목들
                        Expanded(
                          child: Column(
                            spacing: 12,
                            children: [
                              // Completed (35%)
                              Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.black,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 14,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      "35%",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    "Completed",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              // Learning Time (25%)
                              Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Color.fromRGBO(157, 179, 238, 1),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 14,
                                      vertical: 4,
                                    ),
                                    child: Text("25%"),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Learning Time",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              // Tests Passed (30%)
                              Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.grey[400]!,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 14,
                                      vertical: 4,
                                    ),
                                    child: Text("30%"),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Tests Passed",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              // Achievements (10%)
                              Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.orange,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 14,
                                      vertical: 4,
                                    ),
                                    child: Text("10%"),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Achievements",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}