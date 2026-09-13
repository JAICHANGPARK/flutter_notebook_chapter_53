import 'package:flutter_notebook_chapter_53/ep2674_mental_health_app/painter/mental_barchart_painter.dart';
import 'package:flutter_notebook_chapter_53/ep2674_mental_health_app/painter/mental_journal_grid_painter.dart';
import 'package:gap/gap.dart';
import 'package:material_ui/material_ui.dart';

import '../model/mental_sleap_segment.dart';

class MentalHealthHomePage extends StatelessWidget {
  const MentalHealthHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        spacing: 16,
        children: [
          Row(
            spacing: 12,
            children: [
              CircleAvatar(radius: 24),
              Expanded(
                child: Column(
                  spacing: 4,
                  crossAxisAlignment: .start,
                  children: [
                    Text("Today, 26 August"),
                    Text(
                      "Hi, Dream",
                      style: TextStyle(fontWeight: .bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .05),
                      spreadRadius: 4,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Icon(Icons.notifications_none),
              ),
            ],
          ),
          Container(
            padding: .all(14),
            decoration: BoxDecoration(
              borderRadius: .circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .06),
                  spreadRadius: 4,
                  blurRadius: 16,
                ),
              ],
            ),
            child: Column(
              spacing: 16,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Your Daily Mood",
                      style: TextStyle(fontSize: 16, fontWeight: .bold),
                    ),
                    Icon(Icons.arrow_forward_outlined),
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 16), Text("Sun")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 16), Text("Mon")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 16), Text("Tue")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 16), Text("Wed")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 16), Text("Thu")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 18), Text("Fri")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 18), Text("Sat")],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 190,
            child: Row(
              crossAxisAlignment: .start,
              spacing: 16,
              children: [
                Expanded(
                  child: Container(
                    padding: .all(14),
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: .06),
                          spreadRadius: 1,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      spacing: 12,
                      children: [
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              "Mindful Minutes",
                              style: TextStyle(fontSize: 16, fontWeight: .bold),
                            ),
                            Icon(Icons.watch, size: 14),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                          width: double.infinity,
                          child: CustomPaint(painter: MentalBarchartPainter()),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "33 ",
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(text: "minutes"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: .all(14),
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: .06),
                          spreadRadius: 1,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              "Health Journal",
                              style: TextStyle(fontSize: 16, fontWeight: .bold),
                            ),
                            Icon(Icons.health_and_safety_outlined, size: 14),
                          ],
                        ),
                        Spacer(),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "46 ",
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 28,
                                ),
                              ),
                              TextSpan(text: "/365 days"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          height: 62,
                          child: CustomPaint(
                            painter: MentalJournalGridPainter(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: .all(14),
            decoration: BoxDecoration(
              borderRadius: .circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .06),
                  spreadRadius: 4,
                  blurRadius: 16,
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Today's Care",
                      style: TextStyle(fontSize: 16, fontWeight: .bold),
                    ),
                    Icon(Icons.arrow_forward_outlined),
                  ],
                ),
                Row(
                  spacing: 4,
                  children: [
                    Icon(Icons.sunny, size: 16),
                    Expanded(child: Text('Morning Check-in')),
                    Text("3min"),
                    Checkbox(value: false, onChanged: (v) {}),
                  ],
                ),
                Divider(color: Colors.grey[300], height: 0),
                Row(
                  spacing: 4,
                  children: [
                    Icon(Icons.nightlife, size: 16),
                    Expanded(child: Text('Take a mindful break')),
                    Text("15min"),
                    Checkbox(value: false, onChanged: (v) {}),
                  ],
                ),
                Divider(color: Colors.grey[300], height: 0),
                Row(
                  spacing: 4,
                  children: [
                    Icon(Icons.nightlight_outlined, size: 16),
                    Expanded(child: Text('Evening reflection')),
                    Text("15min"),
                    Checkbox(value: false, onChanged: (v) {}),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: .all(14),
            decoration: BoxDecoration(
              borderRadius: .circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .06),
                  spreadRadius: 4,
                  blurRadius: 16,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text("Sleep Overview"),
                    Icon(Icons.nightlight_outlined),
                  ],
                ),
                Gap(16),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "7",
                        style: TextStyle(fontSize: 26, fontWeight: .bold),
                      ),
                      TextSpan(text: " hr"),
                      TextSpan(
                        text: " 59",
                        style: TextStyle(fontSize: 26, fontWeight: .bold),
                      ),
                      TextSpan(text: " min"),
                    ],
                  ),
                ),
                SizedBox(height: 52, child: Row(children: [Container()])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SleepOverviewCard extends StatelessWidget {
  const _SleepOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    const Color awakeColor = Color(0xFFFFEBD9); // 매우 연한 복숭아색
    const Color remColor = Color(0xFFFFDAB9); // 연한 복숭아색
    const Color coreColor = Color(0xFFFF8A38); // 주황색
    const Color deepColor = Color(0xFF4F2A0E); // 짙은 갈색
    const Color textColor = Colors.black87;
    const Color subtitleColor = Colors.grey;
    final List<SleepSegment> segments = [
      SleepSegment(
        name: 'Awake',
        durationString: '39min',
        minutes: 39,
        color: awakeColor,
      ),
      SleepSegment(
        name: 'REM',
        durationString: '1h 42m',
        minutes: 102,
        color: remColor,
      ),
      SleepSegment(
        name: 'Core',
        durationString: '5h 28m',
        minutes: 328,
        color: coreColor,
      ),
      SleepSegment(
        name: 'Deep',
        durationString: '1h',
        minutes: 60,
        color: deepColor,
      ),
    ];
    return const Placeholder();
  }

  Widget _buildProgressBar(List<SleepSegment> segments) {
    return SizedBox(
      height: 20,
      child: Row(
        children: segments.map((segment) {
          return Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: segment.color,
                borderRadius: .circular(10),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildLegend(List<SleepSegment> segments, Color textColor) {
    
  }
}
