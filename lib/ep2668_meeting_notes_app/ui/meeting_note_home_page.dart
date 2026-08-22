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
                children: [
                  Row(
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
                        decoration: BoxDecoration(shape: .circle),
                        child: Icon(Icons.notifications_none_outlined),
                      ),
                    ],
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
