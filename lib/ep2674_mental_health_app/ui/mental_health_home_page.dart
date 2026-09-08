import 'package:material_ui/material_ui.dart';


class MentalHealthHomePage extends StatelessWidget {
  const MentalHealthHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 26,
            ),
            Expanded(child: Column(children: [

            ],)),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.notifications_none),
            )
          ],
        )
      ],
    );
  }
}
