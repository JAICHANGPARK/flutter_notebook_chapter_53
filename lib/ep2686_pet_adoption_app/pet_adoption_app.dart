import 'package:material_ui/material_ui.dart';

import 'ui/pet_main_page.dart';


class PetAdoptionApp extends StatelessWidget {
  const PetAdoptionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PetMainPage(),
    );
  }
}
