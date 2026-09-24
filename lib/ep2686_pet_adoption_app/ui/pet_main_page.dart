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
      body: SafeArea(child: Column(children: [
        Expanded(child: Placeholder()),
      ])),
    );
  }
}
