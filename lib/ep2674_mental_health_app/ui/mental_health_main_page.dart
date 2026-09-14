import 'package:flutter_notebook_chapter_53/ep2674_mental_health_app/ui/mental_health_home_page.dart';
import 'package:material_ui/material_ui.dart';

import 'mental_health_journal_page.dart';

class MentalHealthMainPage extends StatefulWidget {
  const MentalHealthMainPage({super.key});

  @override
  State<MentalHealthMainPage> createState() => _MentalHealthMainPageState();
}

class _MentalHealthMainPageState extends State<MentalHealthMainPage> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 16,
            top: 8,
            right: 16,
            child: IndexedStack(
              index: pageNum,
              children: [
                MentalHealthHomePage(),
                Container(),
                MentalHealthJournalPage(),
              ],
            ),
          ),
          Align(
            alignment: .bottomCenter,
            child: Container(
              margin: .only(bottom: 32),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              padding: .symmetric(horizontal: 6, vertical: 6),
              child: Row(
                mainAxisSize: .min,
                spacing: 16,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageNum = 0;
                      });
                    },
                    child: pageNum == 0
                        ? Container(
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
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Icon(Icons.home_filled, color: Colors.grey),
                  ),
                  Icon(Icons.bar_chart, color: Colors.grey),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageNum = 2;
                      });
                    },
                    child: pageNum == 2
                        ? Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white,
                            ),
                            padding: .symmetric(horizontal: 8, vertical: 6),
                            child: Row(
                              spacing: 4,
                              children: [
                                Icon(
                                  Icons.energy_savings_leaf_outlined,
                                ),
                                Text(
                                  "Journal",
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Icon(Icons.energy_savings_leaf_outlined, color: Colors.grey,),
                  ),

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
