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
            Container(height: 180, child: Placeholder()),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text("Categories of Set",style: TextStyle(
                  fontWeight: .bold,
                  color: Colors.white,
                  fontSize: 18
                ),),
                TextButton(
                  onPressed: () {},
                  child: Text("See All"),
                  style: TextButton.styleFrom(foregroundColor: Colors.yellow),
                ),
              ],
            ),
            Container(
              height: 180,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
