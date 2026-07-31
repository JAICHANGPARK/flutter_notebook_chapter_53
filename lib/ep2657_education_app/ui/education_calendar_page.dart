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
        spacing: 20,
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
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: .horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 64,
                        decoration: BoxDecoration(
                          borderRadius: .circular(6),
                          border: .all()
                        ),
                        child: Column(
                          spacing: 5,
                          children: [
                            Text("Sun"),
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Colors.grey,
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
          Container(height: 200, child: Placeholder()),
          Container(height: 320, child: Placeholder()),
        ],
      ),
    );
  }
}
