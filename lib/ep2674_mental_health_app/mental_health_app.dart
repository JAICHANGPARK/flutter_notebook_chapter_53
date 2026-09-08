import 'package:material_ui/material_ui.dart';

import 'ui/mental_health_main_page.dart';


class MentalHealthApp extends StatelessWidget {
  const MentalHealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MentalHealthMainPage(),
    );
  }
}
