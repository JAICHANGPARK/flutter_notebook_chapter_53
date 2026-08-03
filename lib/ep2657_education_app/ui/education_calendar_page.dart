import 'package:easy_pie_chart/easy_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

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
                    scrollDirection: .horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: .all(6),
                        margin: .only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: .circular(8),
                          border: .all(color: Colors.grey[400]!),
                        ),
                        child: Column(
                          spacing: 5,
                          children: [
                            Text(
                              "Sun",
                              style: TextStyle(fontWeight: .bold, fontSize: 16),
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
          Container(
            height: 180,
            margin: .symmetric(horizontal: 16),
            child: Row(
              spacing: 16,
              children: [
                Container(
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: .circular(16),
                    color: Colors.deepPurple,
                  ),
                ),
                Expanded(
                  child: Column(
                    spacing: 12,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  "Trace the Route",
                                  style: TextStyle(
                                    fontWeight: .bold,
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
                      Column(
                        spacing: 5,
                        children: [
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [Text("Timeline"), Text('04:25/25:25')],
                          ),
                          LinearPercentIndicator(padding: .zero),
                        ],
                      ),
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
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          CircleAvatar(),
                          Container(
                            decoration: ShapeDecoration(shape: StadiumBorder()),
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
          Container(
            height: 300,
            margin: .symmetric(horizontal: 16, vertical: 8),
            padding: .all(16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: .circular(16),
            ),
            child: Column(
              spacing: 12,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,

                        spacing: 4,
                        children: [
                          Text("My Activity", style: TextStyle(fontSize: 16)),
                          Row(
                            spacing: 12,
                            children: [
                              Text(
                                "36h 25m",
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                padding: .symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  borderRadius: .circular(3),
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
                      padding: .all(8),
                      decoration: BoxDecoration(
                        borderRadius: .circular(6),
                        color: Colors.grey[300],
                      ),
                      child: Icon(Icons.more_vert),
                    ),
                  ],
                ),
                Divider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      spacing: 20,
                      children: [
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
                        Expanded(
                          child: Column(
                            spacing: 12,
                            children: [
                              Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.black,
                                    ),
                                    padding: .symmetric(
                                      horizontal: 14,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      "35%",
                                      style: TextStyle(
                                        color: Colors.white,
                                        // fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Completed",
                                    style: TextStyle(
                                      fontSize: 16,
                                      // fontWeight: .bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Color.fromRGBO(157, 179, 238, 1),
                                    ),
                                    padding: .symmetric(
                                      horizontal: 14,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      "25%",
                                      style: TextStyle(
                                        // fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Learning Time",
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: .bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.grey[400]!,
                                    ),
                                    padding: .symmetric(
                                      horizontal: 14,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      "30%",
                                      style: TextStyle(
                                        // fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Tests Passed",
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: .bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.orange
                                    ),
                                    padding: .symmetric(
                                      horizontal: 14,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      "10%",
                                      style: TextStyle(
                                        // fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Archievments",
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: .bold,
                                      ),
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
