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
      backgroundColor: Color.fromRGBO(37, 73, 223, 1),
      body: SafeArea(
        child: IndexedStack(children: [Placeholder(), Placeholder()]),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: .symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              mainAxisAlignment: .center,
              spacing: 4,
              children: [
                HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                Text("Today"),
              ],
            ),
            Column(
              mainAxisAlignment: .center,
              spacing: 4,
              children: [
                HugeIcon(icon: HugeIcons.strokeRoundedDiscoverCircle),
                Text("Discover"),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              child: Icon(Icons.search),
            ),
            Column(
              mainAxisAlignment: .center,
              spacing: 4,
              children: [
                HugeIcon(icon: HugeIcons.strokeRoundedFavourite),
                Text("Saved"),
              ],
            ),
            Column(
              mainAxisAlignment: .center,
              spacing: 4,
              children: [
                HugeIcon(icon: HugeIcons.strokeRoundedBox),
                Text("Orders"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
