import 'package:hugeicons/hugeicons.dart';
import 'package:material_ui/material_ui.dart';

class ShoppingMainPage extends StatefulWidget {
  const ShoppingMainPage({super.key});

  @override
  State<ShoppingMainPage> createState() => _ShoppingMainPageState();
}

class _ShoppingMainPageState extends State<ShoppingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(children: [Placeholder(), Placeholder()]),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Column(
              children: [
                HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                Text("Today"),
              ],
            ),
            Column(
              children: [
                HugeIcon(icon: HugeIcons.strokeRoundedDiscoverCircle),
                Text("Discover"),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}
