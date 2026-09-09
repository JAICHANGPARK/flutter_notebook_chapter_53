import 'package:material_ui/material_ui.dart';

class MentalHealthHomePage extends StatelessWidget {
  const MentalHealthHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        spacing: 16,
        children: [
          Row(
            spacing: 12,
            children: [
              CircleAvatar(radius: 26),
              Expanded(
                child: Column(
                  spacing: 4,
                  crossAxisAlignment: .start,
                  children: [
                    Text("Today, 26 August"),
                    Text(
                      "Hi, Dream",
                      style: TextStyle(fontWeight: .bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                height: 48,
                width: 48,
                child: Icon(Icons.notifications_none),
                decoration: BoxDecoration(
                  shape: .circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .05),
                      spreadRadius: 4,
                      blurRadius: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: .all(14),
            decoration: BoxDecoration(
              borderRadius: .circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .06),
                  spreadRadius: 4,
                  blurRadius: 16,
                ),
              ],
            ),
            child: Column(
              spacing: 16,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Your Daily Mood",
                      style: TextStyle(fontSize: 16, fontWeight: .bold),
                    ),
                    Icon(Icons.arrow_forward_outlined),
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 18), Text("Sun")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 18), Text("Mon")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 18), Text("Tue")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 18), Text("Wed")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 18), Text("Thu")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 18), Text("Fri")],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 12,
                        children: [CircleAvatar(radius: 18), Text("Sat")],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(height: 180, child: Row(
            spacing: 16,
            children: [
              Expanded(child: Container(
                padding: .all(14),
                decoration: BoxDecoration(
                  borderRadius: .circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .06),
                      spreadRadius: 1,
                      blurRadius: 2,
                    ),
                  ],
                ),
              )),
              Expanded(child: Container(
                padding: .all(14),
                decoration: BoxDecoration(
                  borderRadius: .circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .06),
                      spreadRadius: 1,
                      blurRadius: 2,
                    ),
                  ],
                ),
              )),
            ],
          )),
          Container(
            padding: .all(14),
            decoration: BoxDecoration(
              borderRadius: .circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .06),
                  spreadRadius: 4,
                  blurRadius: 16,
                ),
              ],
            ),
            child: Column(
              spacing: 16,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Today's Care",
                      style: TextStyle(fontSize: 16, fontWeight: .bold),
                    ),
                    Icon(Icons.arrow_forward_outlined),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.sunny),
                    Text('Morning Check-in'),
                  ],
                )
              ],
            ),
          ),
          Container(height: 180, child: Placeholder()),
        ],
      ),
    );
  }
}
