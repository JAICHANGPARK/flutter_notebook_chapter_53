import 'package:material_ui/material_ui.dart';

class MentalHealthJournalPage extends StatefulWidget {
  const MentalHealthJournalPage({super.key});

  @override
  State<MentalHealthJournalPage> createState() =>
      _MentalHealthJournalPageState();
}

class _MentalHealthJournalPageState extends State<MentalHealthJournalPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [Text("Journal"), Text("August 26, 2026")],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
