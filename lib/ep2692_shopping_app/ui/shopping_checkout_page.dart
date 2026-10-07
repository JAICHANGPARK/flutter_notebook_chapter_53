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
          children : [],
        )
      )

    );
  }
}
