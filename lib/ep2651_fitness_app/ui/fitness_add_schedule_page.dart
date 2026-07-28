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
            spacing: 24,
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
                  Text(
                    "Shedule Title",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Container(
                    padding: .symmetric(horizontal: 24, vertical: 4),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.white24),
                      ),
                      color: Color.fromRGBO(24, 24, 24, 1),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: .none,
                        hintText: "Enter shedule name",
                        hintStyle: TextStyle(color: Colors.white),
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
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedSuperellipseBorder(
                        borderRadius: .circular(24),
                      ),
                      color: Colors.white12,
                    ),
                    height: 200,
                    padding: .all(16),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      itemBuilder: (context, index) {
                        return CircleAvatar(backgroundColor: Colors.black);
                      },
                    ),
                  ),
                ],
              ),
              Column(
                spacing: 8,
                crossAxisAlignment: .start,
                children: [
                  Text("Select Days", style: TextStyle(color: Colors.white)),
                  Container(
                    height: 62,
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(221, 238, 94, 1),
                            ),
                            child: Center(child: Text("S")),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "M",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(221, 238, 94, 1),
                            ),
                            child: Center(child: Text("T")),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "W",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(221, 238, 94, 1),
                            ),
                            child: Center(child: Text("T")),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "F",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "S",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                spacing: 8,
                crossAxisAlignment: .start,
                children: [
                  Text("Repeat", style: TextStyle(color: Colors.white)),
                  Container(
                    height: 42,
                    child: Row(
                      spacing: 8,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(221, 238, 94, 1),
                            ),
                            child: Center(
                              child: Text(
                                "Daily",
                                style: TextStyle(fontWeight: .bold),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "Weekly",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "Monthly",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(26, 26, 26, 1),
                            ),
                            child: Center(
                              child: Text(
                                "Yearly",
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("Every Days", style: TextStyle(color: Colors.white)),
                  Switch(value: false, onChanged: (v) {}),
                ],
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("Remind me", style: TextStyle(color: Colors.white)),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(26, 26, 26, 1),
                    ),
                    padding: .symmetric(horizontal: 24, vertical: 8),
                    child: Center(
                      child: Text(
                        "06:00 am",
                        style: TextStyle(color: Colors.white24,
                        fontSize: 18),
                      ),
                    ),
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
