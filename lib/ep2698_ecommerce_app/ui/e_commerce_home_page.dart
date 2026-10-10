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
      backgroundColor: Color.fromRGBO(246, 244, 238, 1),
      body: Stack(
        children: [
          Positioned.fill(child: SafeArea(bottom: false, child: Placeholder())),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Container(
              height: 90,
              decoration: BoxDecoration(color: Colors.white),
              child: Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}
