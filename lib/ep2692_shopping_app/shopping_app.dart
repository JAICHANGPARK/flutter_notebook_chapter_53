import 'package:material_ui/material_ui.dart';

import 'ui/shopping_main_page.dart';


class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ShoppingMainPage(),

    );
  }
}
