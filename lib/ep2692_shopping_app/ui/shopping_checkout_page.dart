import "package:gap/gap.dart";
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
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [Icon(Icons.circle_outlined), Text("Title bundle")],
              ),
              Text("Finish your home office"),
              Text("Two items left, Headphones are covered by your order."),
              Gap(24),
              SizedBox(
                height: 54,
                child: Row(
                  spacing: 12,
                  children: [
                    Container(
                      width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: .circular(16),


                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,
                        mainAxisAlignment: .center,
                        spacing: 2,
                        children: [
                          Text(
                            "BrandNew Ultra Headphone",
                            style: TextStyle(fontWeight: .bold, fontSize: 16),
                          ),
                          Text(
                            "Good time to buy, \$50% off",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "\$399.00",
                      style: TextStyle(fontWeight: .bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: 54,
                child: Row(
                  spacing: 12,
                  children: [
                    Container(
                      width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: .circular(16),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,
                        mainAxisAlignment: .center,
                        spacing: 2,
                        children: [
                          Text(
                            "BrandNew Ultra Headphone",
                            style: TextStyle(fontWeight: .bold, fontSize: 16),
                          ),
                          Text(
                            "Good time to buy, \$50% off",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "\$399.00",
                      style: TextStyle(fontWeight: .bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: 54,
                child: Row(
                  spacing: 12,
                  children: [
                    Container(
                      width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: .circular(16),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,
                        mainAxisAlignment: .center,
                        spacing: 2,
                        children: [
                          Text(
                            "BrandNew Ultra Headphone",
                            style: TextStyle(fontWeight: .bold, fontSize: 16),
                          ),
                          Text(
                            "Good time to buy, \$50% off",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "\$399.00",
                      style: TextStyle(fontWeight: .bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Gap(24),
            ],
          ),
        ),
      ),
    );
  }
}
