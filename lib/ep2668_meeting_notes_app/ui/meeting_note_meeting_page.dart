import 'package:material_ui/material_ui.dart';

class MeetingNoteMeetingPage extends StatefulWidget {
  const MeetingNoteMeetingPage({super.key});

  @override
  State<MeetingNoteMeetingPage> createState() => _MeetingNoteMeetingPageState();
}

class _MeetingNoteMeetingPageState extends State<MeetingNoteMeetingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  shape: .circle,
                  border: .all(color: Colors.grey[300]!),
                ),
                child: Center(child: Icon(Icons.keyboard_arrow_left)),
              ),
              Expanded(
                child: Center(
                  child: Text("Meetings", style: TextStyle(fontSize: 17)),
                ),
              ),
              Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  shape: .circle,
                  border: .all(color: Colors.grey[300]!),
                ),
                child: Center(child: Icon(Icons.search)),
              ),
            ],
          ),
        ),
        Container(
          height: 52,
          child: Placeholder(),
        ),
        Expanded(child: ListView.builder(itemBuilder: (context,index){
          return Container(
            height: 260,
            margin: .only(bottom: 12),
            child: Placeholder(),
          );
        }))
      ],
    );
  }
}
