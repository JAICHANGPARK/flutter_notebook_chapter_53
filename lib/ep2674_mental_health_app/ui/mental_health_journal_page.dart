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
    return SafeArea(
      bottom: false,
      child: Column(
        spacing: 16,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Journal",
                      style: TextStyle(fontWeight: .bold, fontSize: 18),
                    ),
                    Text("August 26, 2026"),
                  ],
                ),
              ),
              CircleAvatar(),
            ],
          ),
          Container(height: 140, child: Placeholder()),
          Row(
            spacing: 12,
            children: [
              Text("Recent", style: TextStyle(fontWeight: .bold)),
              Spacer(),
              Icon(Icons.search),
              Icon(Icons.tune),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  height: 120,
                  margin: .only(bottom: 16),

                  child: Placeholder(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
