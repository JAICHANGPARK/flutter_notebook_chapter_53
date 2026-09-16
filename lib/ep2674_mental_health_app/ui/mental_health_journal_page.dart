import 'package:gap/gap.dart';
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
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: .circular(16),
              color: Colors.orangeAccent,
            ),

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text("Reminder", style: TextStyle(fontWeight: .bold)),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.white,
                        ),
                        padding: .symmetric(horizontal: 12, vertical: 5),
                        child: Text(
                          "Done",
                          style: TextStyle(fontWeight: .bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: .circular(16),
                      color: Colors.orange[50],
                    ),
                    padding: .all(16),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "It's time to see your gynecologist.",
                            style: TextStyle(fontWeight: .bold),
                          ),
                          TextSpan(
                            text:
                                "Though work pressure brought a few anxious moments this after 3m ago",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                  margin: .only(left: 4, bottom: 12, right: 4, top: 4),
                  padding: .all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: .circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: .1),
                        spreadRadius: 2,
                        blurRadius: 12,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text("26 Aug, 07:12 AM"),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      Gap(16),
                      Text(
                        "A moment I needed to slow down",
                        style: TextStyle(fontWeight: .bold),
                      ),
                      Gap(4),
                      Text(
                        "Today felt a litte heavier than i expected. I had a lot on my mind and ...",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        spacing: 12,
                        children: [
                          Container(
                            decoration: ShapeDecoration(shape: StadiumBorder(),),
                            child: Text("Stressed"),
                          ),
                          Container(
                            decoration: ShapeDecoration(shape: StadiumBorder(),),
                            child: Text("Self"),
                          ),
                          Container(
                            decoration: ShapeDecoration(shape: StadiumBorder(),),
                            child: Text("Reflection"),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
