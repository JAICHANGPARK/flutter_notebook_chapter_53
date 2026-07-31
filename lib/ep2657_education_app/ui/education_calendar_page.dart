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
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            spacing: 16,
            crossAxisAlignment: .start,
            children: [
              Text("Jun 2026"),
              SizedBox(height: 100, child: Placeholder()),
            ],
          ),
        ),
        Container(
          height: 200,
          child: Placeholder(),
        ),
        Container(
          height: 320,
          child: Placeholder(),
        )
      ],
    );
  }
}
