import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_53/ep2657_education_app/ui/education_main_page.dart';

/// 교육 앱의 루트 위젯
class EducationApp extends StatelessWidget {
  const EducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EducationMainPage(),
    );
  }
}
