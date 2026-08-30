import 'package:flutter/material.dart';
import 'ui/meeting_note_home_page.dart';

/// 회의록 앱의 루트 위젯
class MeetingNotesApp extends StatelessWidget {
  const MeetingNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MeetingNoteHomePage(),
    );
  }
}
