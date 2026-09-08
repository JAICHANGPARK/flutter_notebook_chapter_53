import 'package:flutter_notebook_chapter_53/ep2674_mental_health_app/ui/mental_health_home_page.dart';
import 'package:material_ui/material_ui.dart';

class MentalHealthMainPage extends StatefulWidget {
  const MentalHealthMainPage({super.key});

  @override
  State<MentalHealthMainPage> createState() => _MentalHealthMainPageState();
}

class _MentalHealthMainPageState extends State<MentalHealthMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 16,
            top: 0,
            right: 16,
            child: IndexedStack(children: [MentalHealthHomePage()]),
          ),
          Align(
            alignment: .bottomCenter,
            child: Container(
              margin: .only(bottom: 32),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              padding: .all(5),
              child: Row(
                mainAxisSize: .min,
                spacing: 16,
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white,
                    ),
                    padding: .symmetric(horizontal: 8, vertical: 6),
                    child: Row(
                      spacing: 4,
                      children: [
                        Icon(Icons.home_filled),
                        Text(
                          "Home",
                          style: TextStyle(fontWeight: .bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.bar_chart, color: Colors.grey),
                  Icon(Icons.energy_savings_leaf_outlined, color: Colors.grey),
                  Icon(Icons.person_2_outlined, color: Colors.grey),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
