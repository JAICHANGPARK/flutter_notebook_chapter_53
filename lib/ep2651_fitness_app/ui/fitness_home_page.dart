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
          crossAxisAlignment: .start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white12,
                  child: Icon(Icons.arrow_back_outlined),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "Workout sets",
                      style: TextStyle(fontWeight: .bold, color: Colors.white),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
