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
          SizedBox(
            height: 180,
            child: Row(
              spacing: 16,
              children: [
                Expanded(
                  child: Container(
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              "Mindful Minutes",
                              style: TextStyle(fontSize: 16, fontWeight: .bold),
                            ),
                            Icon(Icons.watch, size: 14,),
                          ],
                        ),
                        Expanded(child: Placeholder()),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "33 ",
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(text: "minutes"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              "Health Journal",
                              style: TextStyle(fontSize: 16, fontWeight: .bold),
                            ),
                            Icon(Icons.health_and_safety_outlined),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
                  spacing: 4,
                  children: [
                    Icon(Icons.sunny),
                    Expanded(child: Text('Morning Check-in')),
                    Text("3min"),
                    Checkbox(value: false, onChanged: (v) {}),
                  ],
                ),
                Divider(color: Colors.grey[300], height: 0),
                Row(
                  spacing: 4,
                  children: [
                    Icon(Icons.nightlife),
                    Expanded(child: Text('Take a mindful break')),
                    Text("15min"),
                    Checkbox(value: false, onChanged: (v) {}),
                  ],
                ),
                Divider(color: Colors.grey[300], height: 0),
                Row(
                  spacing: 4,
                  children: [
                    Icon(Icons.nightlight_outlined),
                    Expanded(child: Text('Evening reflection')),
                    Text("15min"),
                    Checkbox(value: false, onChanged: (v) {}),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 180,
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
          ),
        ],
      ),
    );
  }
}
