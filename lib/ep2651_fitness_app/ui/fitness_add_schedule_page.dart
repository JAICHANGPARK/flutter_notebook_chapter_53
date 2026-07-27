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
        child: Column(
          crossAxisAlignment: .start,
          spacing: 16,
          children: [
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
            ),
            Column(
              crossAxisAlignment: .start,
              spacing: 6,
              children: [
                Text("Shedule Title", style: TextStyle(color: Colors.white)),
                Container(
                  decoration: ShapeDecoration(shape: StadiumBorder()),
                  child: TextField(),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: .start,
              spacing: 6,
              children: [
                Text("Choose Activity", style: TextStyle(color: Colors.white)),
                Container(
                  decoration: ShapeDecoration(
                    shape: RoundedSuperellipseBorder(),
                    color: Colors.white12,

                  ),
                  height: 200,
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
