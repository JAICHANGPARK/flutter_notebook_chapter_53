import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_53/ep2657_education_app/ui/education_home_page.dart';
import 'package:hugeicons/hugeicons.dart';

class EducationMainPage extends StatefulWidget {
  const EducationMainPage({super.key});

  @override
  State<EducationMainPage> createState() => _EducationMainPageState();
}

class _EducationMainPageState extends State<EducationMainPage> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          spacing: 16,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                spacing: 8,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: .circular(5),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: 2,
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "Hello, Dream",
                          style: TextStyle(fontWeight: .bold, fontSize: 20),
                        ),
                        Text("Lavel Up"),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: .circular(5),
                    ),
                    child: Center(
                      child: HugeIcon(icon: HugeIcons.strokeRoundedHugeicons),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: pageNum,
                children: [
                  Placeholder(),
                 EducationHomePage()
                  Placeholder(),
                  Placeholder(),
                  Placeholder(),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: .circular(32),
          topRight: .circular(32),
        ),
        child: Container(
          height: 110,
          decoration: BoxDecoration(),
          child: BottomNavigationBar(
            currentIndex: pageNum,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[100],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            onTap: (idx) {
              setState(() {
                pageNum = idx;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: "Calendar",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Calls"),
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
