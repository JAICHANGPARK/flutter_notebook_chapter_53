import 'package:material_ui/material_ui.dart';

class MeetingNoteMeetingPage extends StatefulWidget {
  const MeetingNoteMeetingPage({super.key});

  @override
  State<MeetingNoteMeetingPage> createState() => _MeetingNoteMeetingPageState();
}

class _MeetingNoteMeetingPageState extends State<MeetingNoteMeetingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                shape: .circle,
                border: .all(color: Colors.grey[300]!),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
