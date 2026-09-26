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
            Expanded(child: Column(
              crossAxisAlignment: .start,
              children: [
                Text("Hello, Dream"),
                Text("Good pets make a great life!"),
              ],
            ))
          ],
        )

      ],
    );
  }
}
