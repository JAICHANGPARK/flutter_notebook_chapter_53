import 'package:hugeicons/hugeicons.dart';
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
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                spacing: 24,
                children: [
                  Padding(
                    padding: .symmetric(horizontal: 16),
                    child: Row(
                      spacing: 8,
                      children: [
                        CircleAvatar(),
                        Expanded(child: Text("Hi Dream Walker")),
                        Container(
                          padding: .all(12),
                          decoration: BoxDecoration(
                            shape: .circle,
                            border: .all(color: Colors.grey[400]!),
                          ),
                          child: Icon(Icons.search),
                        ),
                        Container(
                          padding: .all(12),
                          decoration: BoxDecoration(
                            shape: .circle,
                            border: .all(color: Colors.grey[400]!),
                          ),
                          child: Icon(Icons.notifications_none_outlined),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedSuperellipseBorder(
                        borderRadius: .circular(16),
                      ),
                      color: Colors.grey[50]!,
                    ),
                    margin: .symmetric(horizontal: 16),
                    padding: .all(12),
                    child: Row(
                      spacing: 12,
                      children: [
                        CircleAvatar(radius: 24),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text('What do you want to know?'),
                              Text("Ask anything about your meethings"),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_forward_outlined),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 24,
                        crossAxisAlignment: .start,
                        children: [
                          Column(
                            spacing: 16,
                            crossAxisAlignment: .start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
                                  mainAxisAlignment: .spaceBetween,
                                  children: [
                                    Text(
                                      "Upcoming",
                                      style: TextStyle(
                                        fontWeight: .bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text("View all"),
                                  ],
                                ),
                              ),
                              Container(
                                height: 110,
                                margin: .only(left: 16),
                                child: ListView.builder(
                                  scrollDirection: .horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 170,
                                      margin: .only(right: 12),
                                      decoration: ShapeDecoration(
                                        color: Colors.grey[100],
                                        shape: RoundedSuperellipseBorder(
                                          borderRadius: .circular(16),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 6,
                                            right: 6,
                                            child: CircleAvatar(),
                                          ),
                                          Positioned(
                                            left: 16,
                                            bottom: 8,
                                            child: Column(
                                              crossAxisAlignment: .start,
                                              children: [
                                                Text(
                                                  "5",
                                                  style: TextStyle(
                                                    fontWeight: .bold,
                                                    fontSize: 24,
                                                  ),
                                                ),
                                                Text("Today's Meetings"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            spacing: 16,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
                                  mainAxisAlignment: .spaceBetween,
                                  children: [
                                    Text(
                                      "Upcoming",
                                      style: TextStyle(
                                        fontWeight: .bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text("View all"),
                                  ],
                                ),
                              ),
                              Column(
                                children: List.generate(6, (index) {
                                  return Container(
                                    height: 200,
                                    decoration: ShapeDecoration(
                                      shape: RoundedSuperellipseBorder(),
                                    ),
                                    child: Container(
                                      decoration: ShapeDecoration(
                                        shape: RoundedSuperellipseBorder(
                                          borderRadius: .circular(16),
                                        ),
                                      ),
                                      child: Column(children: [
                                        Text('Product Strategy'),
                                        Text("Discussed onboarding redesign, enterprise pricing. and the September launch."),

                                      ]),
                                    ),
                                  );
                                }),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 100,
                padding: .symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black.withValues(alpha: .1)),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: .circular(16),
                        ),
                        color: Colors.black,
                      ),
                      child: Icon(Icons.home_filled, color: Colors.white),
                    ),
                    Container(
                      height: 64,
                      width: 64,
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: .circular(16),
                        ),
                        color: Colors.grey[200],
                      ),
                      child: Icon(Icons.calendar_month, color: Colors.grey),
                    ),
                    Container(
                      height: 64,
                      width: 64,
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: .circular(16),
                        ),
                        color: Colors.grey[200],
                      ),
                      child: Icon(Icons.mic, color: Colors.grey),
                    ),
                    Container(
                      height: 64,
                      width: 64,
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: .circular(16),
                        ),
                        color: Colors.grey[200],
                      ),
                      child: Icon(Icons.inbox_outlined, color: Colors.grey),
                    ),
                    Container(
                      height: 64,
                      width: 64,
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: .circular(16),
                        ),
                        color: Colors.grey[200],
                      ),
                      child: Icon(Icons.star_border, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
