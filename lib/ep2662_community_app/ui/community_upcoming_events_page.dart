import 'package:flutter/material.dart';

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
          Expanded(child: ListView.builder(itemBuilder: (context, index) {})),
        ],
      ),
    );
  }
}
