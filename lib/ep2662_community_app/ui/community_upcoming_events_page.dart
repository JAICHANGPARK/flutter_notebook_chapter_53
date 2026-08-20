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
        spacing: 16,
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
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Search for events",
                    ),
                  ),
                ),
                VerticalDivider(),
                IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
