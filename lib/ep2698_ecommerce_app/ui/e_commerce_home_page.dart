import 'package:material_ui/material_ui.dart';

class ECommerceHomePage extends StatefulWidget {
  const ECommerceHomePage({super.key});

  @override
  State<ECommerceHomePage> createState() => _ECommerceHomePageState();
}

class _ECommerceHomePageState extends State<ECommerceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Placeholder()),
          Positioned(child: Container(height: 90, child: Placeholder())),
        ],
      ),
    );
  }
}
