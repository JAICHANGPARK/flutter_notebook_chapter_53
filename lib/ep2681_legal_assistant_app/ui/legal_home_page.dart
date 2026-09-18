import 'package:material_ui/material_ui.dart';

class LegalHomePage extends StatefulWidget {
  const LegalHomePage({super.key});

  @override
  State<LegalHomePage> createState() => _LegalHomePageState();
}

class _LegalHomePageState extends State<LegalHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.purple[50]!,
                ),
                child: Row(children: [CircleAvatar(), Text("Dream")]),
              ),
              Container(
                decoration: BoxDecoration(shape: .circle),
                child: Icon(Icons.star_border),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
