import 'package:flutter/material.dart';

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
                  height: 82,
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
                            Text("Sun"),
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(12),
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
              children: [
                Container(width: 150, child: Placeholder()),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text("Trace the Route"),
                                Row(
                                  children: [
                                    Icon(Icons.image_outlined),
                                    Text("Brief 002"),
                                  ],
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
          Container(height: 320, child: Placeholder()),
        ],
      ),
    );
  }
}
