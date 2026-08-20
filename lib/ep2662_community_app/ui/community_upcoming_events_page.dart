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
          Badge(child: Icon(Icons.notifications_none_outlined),
            label: Text("2"),
          )
        ],
      ),
    );
  }
}
