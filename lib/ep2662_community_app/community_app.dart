import 'package:flutter/material.dart';
import 'ui/community_main_page.dart';

/// 커뮤니티 앱 루트 위젯
class CommunityApp extends StatelessWidget {
  const CommunityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CommunityMainPage(),
    );
  }
}
