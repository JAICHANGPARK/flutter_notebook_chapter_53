import 'package:material_ui/material_ui.dart';

import 'legal_home_page.dart';

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
                    // Color.fromRGBO(66, 63, 64, 1),
                  ],
                  stops: [0.0, 0.45],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .bottomLeft,
                  end: .topCenter,
                  colors: [
                    // Color.fromRGBO(35, 33, 56, 1),
                    Color.fromRGBO(66, 63, 64, 1),
                    Colors.black,
                  ],
                  stops: [0.0, 0.8],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Expanded(child: IndexedStack(children: [LegalHomePage()],),),
                Container(
                  margin: .only(left: 16, right: 16, bottom: 32),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    gradient: LinearGradient(
                      begin: .centerLeft,
                      end: .centerRight,
                      colors: [
                        Color.fromRGBO(42, 42, 42, 1),
                        Color.fromRGBO(42, 42, 42, 1),
                        Color.fromRGBO(43, 43, 43, 1),
                        Color.fromRGBO(45, 45, 45, 1),
                      ],
                    ),
                  ),
                  height: 80,
                  padding: .symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.balance, size: 28),
                      ),
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: Color.fromRGBO(58, 58, 58, 1),
                        foregroundColor: Colors.grey,
                        child: Icon(Icons.chat_outlined, size: 28),
                      ),
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: Color.fromRGBO(58, 58, 58, 1),
                        foregroundColor: Colors.grey,
                        child: Icon(Icons.notifications_none, size: 28),
                      ),
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: Color.fromRGBO(58, 58, 58, 1),
                        foregroundColor: Colors.grey,
                        child: Icon(Icons.person_2_outlined, size: 28),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
