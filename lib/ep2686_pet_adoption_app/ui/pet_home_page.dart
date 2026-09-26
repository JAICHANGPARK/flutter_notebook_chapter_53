import 'package:material_ui/material_ui.dart';

class PetHomePage extends StatefulWidget {
  const PetHomePage({super.key});

  @override
  State<PetHomePage> createState() => _PetHomePageState();
}

class _PetHomePageState extends State<PetHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text("Hello, Dream"),
                  Text("Good pets make a great life!"),
                ],
              ),
            ),
            Container(
              padding: .all(6),
              decoration: BoxDecoration(
                  shape: .circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .1),

                    )
                  ]
              ),
              child: Badge(
                child: Icon(Icons.notifications_none),
              ),
            ),
            CircleAvatar()
          ],
        ),

      ],
    );
  }
}
