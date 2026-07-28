import 'package:flutter/material.dart';

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
            spacing: 16,
            children: [
              Row(
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
                        "Add Shedule",
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
              Column(
                crossAxisAlignment: .start,
                spacing: 8,
                children: [
                  Text("Shedule Title", style: TextStyle(color: Colors.white)),
                  Container(
                    padding: .symmetric(horizontal: 16, vertical: 4),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.white24),
                      ),
                      color: Colors.black12,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: .none,
                        hintText: "Enter shedule name",
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: .start,
                spacing: 6,
                children: [
                  Text(
                    "Choose Activity",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedSuperellipseBorder(),
                      color: Colors.white12,
                    ),
                    height: 200,
                  ),
                ],
              ),
              Column(
                spacing: 6,
                crossAxisAlignment: .start,
                children: [
                  Text("Select Days", style: TextStyle(color: Colors.white)),
                  Container(height: 120, child: Placeholder()),
                ],
              ),
              Column(
                spacing: 6,
                crossAxisAlignment: .start,
                children: [
                  Text("Repeat", style: TextStyle(color: Colors.white)),
                  Container(height: 62, child: Placeholder()),
                ],
              ),
              Row(
                children: [
                  Text("Every Days", style: TextStyle(color: Colors.white)),
                  Switch(value: false, onChanged: (v) {}),
                ],
              ),
              Row(
                children: [
                  Text("Remind me", style: TextStyle(color: Colors.white)),
                  Container(
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                  ),
                ],
              ),
              Container(decoration: BoxDecoration(borderRadius: .circular(16))),
            ],
          ),
        ),
      ),
    );
  }
}
