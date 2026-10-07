import 'package:hugeicons/hugeicons.dart';
import 'package:material_ui/material_ui.dart';

import 'shopping_checkout_page.dart';
import 'shopping_saved_page.dart';

class ShoppingMainPage extends StatefulWidget {
  const ShoppingMainPage({super.key});

  @override
  State<ShoppingMainPage> createState() => _ShoppingMainPageState();
}

class _ShoppingMainPageState extends State<ShoppingMainPage> {
  int pageNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: IndexedStack(
                index: pageNum,
                children: [
                  Placeholder(),
                  Placeholder(),
                  ShoppingSavedPage(),
                  ShoppingCheckoutPage(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        color: Colors.white,
        padding: .symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  pageNum = 0;
                });
              },
              child: Column(
                mainAxisAlignment: .center,
                spacing: 4,
                children: [
                  HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                  Text("Today"),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageNum = 1;
                });
              },
              child: Column(
                mainAxisAlignment: .center,
                spacing: 4,
                children: [
                  HugeIcon(icon: HugeIcons.strokeRoundedDiscoverCircle),
                  Text("Discover"),
                ],
              ),
            ),
            CircleAvatar(
              radius: 24,
              backgroundColor: Color.fromRGBO(37, 73, 223, 1),
              foregroundColor: Colors.white,
              child: Icon(Icons.search),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  pageNum= 2;
                });
              },
              child: Column(
                mainAxisAlignment: .center,
                spacing: 4,
                children: [
                  HugeIcon(icon: HugeIcons.strokeRoundedFavourite),
                  Text("Saved"),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  pageNum= 3;
                });
              },
              child: Column(
                mainAxisAlignment: .center,
                spacing: 4,
                children: [
                  HugeIcon(icon: HugeIcons.strokeRoundedBox),
                  Text("Orders"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
