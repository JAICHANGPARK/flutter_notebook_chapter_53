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
        spacing: 16,
        crossAxisAlignment: .start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              spacing: 14,
              children: [
                Container(
                  padding: .only(left: 4, right: 16, bottom: 4, top: 4),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.purple[50]!,
                  ),
                  child: Row(children: [CircleAvatar(), Text("Dream")]),
                ),
                Spacer(),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    shape: .circle,
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(color: Colors.green, offset: Offset(0, 1)),
                    ],
                  ),
                  child: Icon(Icons.star_border, color: Colors.white),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    shape: .circle,
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(color: Colors.grey, offset: Offset(0, 1)),
                    ],
                  ),
                  child: Icon(Icons.search, color: Colors.white),
                ),
              ],
            ),
          ),

          Text("Legal Help, Your Way",style: TextStyle(
            color: Colors.white,
          ),),
          Column(
            children: [
              Text("SMART LEGAL",style: TextStyle(
                color: Colors.white,
                fontWeight: .bold,
              ),),
              Text("SOLUTIONS, ANYTIME",style: TextStyle(
                color: Colors.white,
                fontWeight: .bold,
              ),),
            ],
          )

        ],
      ),
    );
  }
}
