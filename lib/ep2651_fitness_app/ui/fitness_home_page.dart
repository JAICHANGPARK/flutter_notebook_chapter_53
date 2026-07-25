import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: .start,
                  children: [
                    Container(
                      height: 220,
                      clipBehavior: .antiAliasWithSaveLayer,
                      margin: .symmetric(horizontal: 16),
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: .circular(24),
                        ),
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
                              spacing: 12,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  "Progress",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text(
                                      "Lower Body",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      "Cardio    10 mins",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),

                                Row(
                                  crossAxisAlignment: .start,
                                  spacing: 4,
                                  children: [
                                    Container(
                                      margin: .only(top: 8),
                                      decoration: ShapeDecoration(
                                        shape: StadiumBorder(),
                                        color: Colors.black,
                                      ),
                                      padding: .symmetric(
                                        horizontal: 16,
                                        vertical: 4,
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "539",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: .bold,
                                            ),
                                          ),
                                          Text(
                                            "CALORIES",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: .all(4),
                                      decoration: BoxDecoration(
                                        shape: .circle,
                                        border: .all(color: Colors.black),
                                      ),
                                      child: Icon(Icons.arrow_forward_outlined),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 14,
                            top: 14,
                            child: CircularPercentIndicator(
                              radius: 22,
                              progressColor: Colors.black,
                              center: Text("72%"),
                              percent: .72,
                            ),
                          ),
                          Positioned(
                            right: -24,
                            top: -24,
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                shape: .circle,
                                border: .all(width: 16, color: Colors.black12),
                              ),
                            ),
                          ),
                          Positioned(
                            right: -52,
                            top: -52,
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                shape: .circle,
                                border: .all(width: 16, color: Colors.black12),
                              ),
                            ),
                          ),
                          Positioned(
                            right: -80,
                            top: -80,
                            child: Container(
                              height: 240,
                              width: 240,
                              decoration: BoxDecoration(
                                shape: .circle,
                                border: .all(width: 16, color: Colors.black12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: .start,
                      spacing: 6,
                      children: [
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
                                    borderRadius: .circular(20),
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
                                        children: [Text("Fitness"), CircleAvatar()],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: List.generate(
                          5,
                          (idx) => Container(
                            decoration: ShapeDecoration(
                              shape: RoundedSuperellipseBorder(
                                borderRadius: .circular(16),
                                side: BorderSide(color: Colors.white24),
                              ),
                              color: Color.fromRGBO(24, 24, 24, 1),
                            ),
                            margin: .only(bottom: 16),
                            height: 100,
                            child: Row(children: []),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
