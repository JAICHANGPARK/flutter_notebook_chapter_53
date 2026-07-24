import 'package:flutter/material.dart';

class FitnessHomePage extends StatefulWidget {
  const FitnessHomePage({super.key});

  @override
  State<FitnessHomePage> createState() => _FitnessHomePageState();
}

class _FitnessHomePageState extends State<FitnessHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          spacing: 16,
          crossAxisAlignment: .start,
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
                        "Workout sets",
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
            Container(
              height: 200,
              margin: .symmetric(horizontal: 16),
              decoration: ShapeDecoration(
                shape: RoundedSuperellipseBorder(borderRadius: .circular(24)),
                color: Color.fromRGBO(221, 238, 94, 1),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 16,
                    bottom: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text("Progress"),
                        Text("Lower Body"),
                        Text("Cardio    10 mins"),
                        Container(
                          child: Column(
                            children: [Text("539"), Text("CALORIES")],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    "Categories of Set",
                    style: TextStyle(
                      fontWeight: .bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Color.fromRGBO(221, 238, 94, 1),
                    ),
                    child: Text("See All"),
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              margin: .only(left: 16),
              child: ListView.builder(
                scrollDirection: .horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 180,
                    margin: .only(right: 12),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: .circular(16),
                      ),
                      color: Colors.grey,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 12,
                            left: 12,
                            right: 12,
                            child: Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                          Text("Fitness"),
                          CircleAvatar(),
                        ],))
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  "Workout List",
                  style: TextStyle(
                    fontWeight: .bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromRGBO(221, 238, 94, 1),
                  ),
                  child: Text("See All"),
                ),
              ],
            ),
            Column(
              children: List.generate(
                5,
                (idx) => Container(height: 120, child: Placeholder()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
