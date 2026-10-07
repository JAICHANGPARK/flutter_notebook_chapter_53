import "package:material_ui/material_ui.dart";

class ShoppingCheckoutPage extends StatefulWidget {
  const ShoppingCheckoutPage({super.key});

  @override
  State<ShoppingCheckoutPage> createState() => _ShoppingCheckoutPage();
}

class _ShoppingCheckoutPage extends State<ShoppingCheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor : Colors.white,
          surfaceTintColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: .start,
          children : [
            Row(
              children : [
                Icon(Icons.circle_outlined),
                Text("Title bundle"),
              ],
            ),
            Text("Finish your home office"),
            Text("Two items left, Headphones are covered by your order."),

          ],
        )
      )

    );
  }
}
