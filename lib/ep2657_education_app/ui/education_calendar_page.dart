import 'package:flutter/material.dart';

class EducationCalendarPage extends StatefulWidget {
  const EducationCalendarPage({super.key});

  @override
  State<EducationCalendarPage> createState() => _EducationCalendarPageState();
}

class _EducationCalendarPageState extends State<EducationCalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 16,
      children: [
        Column(
          crossAxisAlignment: .start,
          children: [
            Text("Jun 2026"),
            SizedBox(height: 100, child: Placeholder()),
          ],
        ),
      ],
    );
  }
}
