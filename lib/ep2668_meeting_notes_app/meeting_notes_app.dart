import 'package:material_ui/material_ui.dart';

import 'ui/meeting_note_home_page.dart';

class MeetingNotesApp extends StatelessWidget {
  const MeetingNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MeetingNoteHomePage(),
    );
  }
}
