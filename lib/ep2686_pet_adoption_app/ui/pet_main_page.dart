import 'package:material_ui/material_ui.dart';

class PetMainPage extends StatefulWidget {
  const PetMainPage({super.key});

  @override
  State<PetMainPage> createState() => _PetMainPageState();
}

class _PetMainPageState extends State<PetMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(child: Placeholder()),
            Container(
              height: 100,
              margin: .only(top: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 3,
                    blurRadius: 4,
                  ),
                ],
                borderRadius: .only(
                  topLeft: .circular(32),
                  topRight: .circular(32),
                ),
              ),
              child: Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  Column(
                    spacing: 4,
                    mainAxisAlignment: .center,
                    children: [CircleAvatar(), Text("Home")],
                  ),
                  Column(
                    spacing: 4,
                    mainAxisAlignment: .center,
                    children: [CircleAvatar(), Text("Home")],
                  ),
                  Column(
                    spacing: 4,
                    mainAxisAlignment: .center,
                    children: [CircleAvatar(), Text("Home")],
                  ),
                  Column(
                    spacing: 4,
                    mainAxisAlignment: .center,
                    children: [CircleAvatar(), Text("Home")],
                  ),
                  Column(
                    spacing: 4,
                    mainAxisAlignment: .center,
                    children: [CircleAvatar(), Text("Home")],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
