import 'package:material_ui/material_ui.dart';

class PetMainPage extends StatefulWidget {
  const PetMainPage({super.key});

  @override
  State<PetMainPage> createState() => _PetMainPageState();
}

class _PetMainPageState extends State<PetMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Placeholder()),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: .only(
                  topLeft: .circular(32),
                  topRight: .circular(32),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
