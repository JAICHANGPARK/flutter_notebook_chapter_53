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
        spacing: 24,
        crossAxisAlignment: .start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: .start,
              spacing: 16,
              children: [
                Text(
                  "Legal Help, Your Way",
                  style: TextStyle(color: Colors.white),
                ),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "SMART LEGAL",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: .bold,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      "SOLUTIONS, ANYTIME",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: .bold,
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 48,
            child: ListView(
              scrollDirection: .horizontal,
              children: [
                Container(
                  margin: .only(left: 16),
                  padding: .symmetric(horizontal: 16, vertical: 12),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "Family Lawyer",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  margin: .only(left: 16),
                  padding: .symmetric(horizontal: 16, vertical: 12),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.white10,
                  ),
                  child: Center(
                    child: Text(
                      "Real Estate Lawyer",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  margin: .only(left: 16),
                  padding: .symmetric(horizontal: 16, vertical: 12),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.white10,
                  ),
                  child: Center(
                    child: Text(
                      "Real Estate Lawyer",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}
