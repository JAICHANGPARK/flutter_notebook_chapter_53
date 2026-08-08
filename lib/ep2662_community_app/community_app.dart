import 'package:flutter/material.dart';
import 'ui/community_main_page.dart';


class CommunityApp extends StatelessWidget {
  const CommunityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CommunityMainPage(),
    );
  }
}
