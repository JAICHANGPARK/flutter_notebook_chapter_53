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
          spacing: 16,
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
              padding: .all(8),
              decoration: BoxDecoration(
                  shape: .circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .1),
                      spreadRadius: 1,
                      blurRadius: 3
                    )
                  ]
              ),
              child: Badge(
                child: Icon(Icons.notifications_none),
              ),
            ),
            CircleAvatar(
              radius: 24,
            )
          ],
        ),

      ],
    );
  }
}
