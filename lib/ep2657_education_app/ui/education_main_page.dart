import 'package:flutter/material.dart';

class EducationMainPage extends StatefulWidget {
  const EducationMainPage({super.key});

  @override
  State<EducationMainPage> createState() => _EducationMainPageState();
}

class _EducationMainPageState extends State<EducationMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: .circular(32)),
        child: Container(
          height: 110,
          decoration: BoxDecoration(),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,

            backgroundColor: Colors.grey[100],
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
