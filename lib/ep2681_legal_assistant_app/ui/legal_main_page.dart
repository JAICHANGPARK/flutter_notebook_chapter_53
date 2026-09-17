import 'package:material_ui/material_ui.dart';

class LegalMainPage extends StatefulWidget {
  const LegalMainPage({super.key});

  @override
  State<LegalMainPage> createState() => _LegalMainPageState();
}

class _LegalMainPageState extends State<LegalMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .topLeft,
                  end: .bottomLeft,
                  colors: [
                    Color.fromRGBO(35, 33, 56, 1),
                    Colors.black,
                    Color.fromRGBO(66, 63, 64, 1),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
