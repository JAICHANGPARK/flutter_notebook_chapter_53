import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CommunityUpcomingEventsPage extends StatefulWidget {
  const CommunityUpcomingEventsPage({super.key});

  @override
  State<CommunityUpcomingEventsPage> createState() =>
      _CommunityUpcomingEventsPageState();
}

class _CommunityUpcomingEventsPageState
    extends State<CommunityUpcomingEventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 250, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Upcoming events"),
        actionsPadding: .only(right: 16),
        actions: [
          Badge(
            child: Icon(Icons.notifications_none_outlined),
            label: Text("2"),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: .symmetric(horizontal: 16, vertical: 16),
            decoration: ShapeDecoration(
              shape: StadiumBorder(),

              color: Colors.white,
              shadows: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .1),
                  blurRadius: 3,
                  spreadRadius: 1,
                ),
              ],
            ),
            padding: .only(left: 16),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: "Search for events",
                        border: .none,
                      ),
                    ),
                  ),
                  VerticalDivider(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Container(
              height: 34,
              child: ListView(
                scrollDirection: .horizontal,
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(47, 92, 222, 1),
                    ),
                    padding: .symmetric(horizontal: 16),
                    margin: .only(right: 8),
                    child: Center(
                      child: Text("All", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                    margin: .only(right: 8),
                    padding: .symmetric(horizontal: 16),
                    child: Center(
                      child: Text(
                        "Quran Tafsir",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                    padding: .symmetric(horizontal: 16),
                    margin: .only(right: 8),
                    child: Center(
                      child: Text(
                        "Quran Study",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                    padding: .symmetric(horizontal: 16),
                    margin: .only(right: 8),
                    child: Center(
                      child: Text(
                        "Women Exclusive",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(12),
          Expanded(child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: 320,
                margin: .all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: .circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 4,
                      blurRadius: 3,
                    ),
                  ],
                ),
                clipBehavior: .antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 12,
                              top: 12,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: .circle,
                                  border: .all(
                                    color: Colors.white24,
                                  ),
                                  color: Colors.black26,
                                ),
                                padding: .all(8),
                                child: Icon(
                                  Icons
                                      .bookmark_border_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: .start,
                        spacing: 4,
                        children: [
                          Text(
                            "Ramadan ",
                            style: TextStyle(
                              fontWeight: .bold,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            spacing: 4,
                            children: [
                              Expanded(
                                child: Row(
                                  spacing: 4,
                                  children: [
                                    Icon(
                                      Icons.location_on_rounded,
                                      size: 16,
                                      color: Color.fromRGBO(
                                        47,
                                        92,
                                        222,
                                        1,
                                      ),
                                    ),
                                    Text("Unknown, Earth"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  spacing: 4,
                                  children: [
                                    Icon(
                                      Icons.access_time_filled,
                                      size: 16,
                                      color: Color.fromRGBO(
                                        47,
                                        92,
                                        222,
                                        1,
                                      ),
                                    ),
                                    Text("7:25 PM"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),),
        ],
      ),
    );
  }
}
