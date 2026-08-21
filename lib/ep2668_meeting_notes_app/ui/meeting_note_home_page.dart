import 'package:material_ui/material_ui.dart';

class MeetingNoteHomePage extends StatefulWidget {
  const MeetingNoteHomePage({super.key});

  @override
  State<MeetingNoteHomePage> createState() => _MeetingNoteHomePageState();
}

class _MeetingNoteHomePageState extends State<MeetingNoteHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(children: []),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(height: 80,
              child: Row(
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    decoration: ShapeDecoration(shape: RoundedSuperellipseBorder()),
                  )
                ],
              ),),

          ),
        ],
      ),
    );
  }
}
