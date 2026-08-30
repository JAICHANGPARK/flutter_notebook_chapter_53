import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_53/ep2651_fitness_app/ui/fitness_home_page.dart';

/// 피트니스 앱의 루트 위젯
class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FitnessHomePage(),
    );
  }
}
