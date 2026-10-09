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
                spacing: 12,
                children: [Icon(Icons.circle_outlined), Text("Title bundle")],
              ),
              Gap(4),
              Text(
                "Finish your home office",
                style: TextStyle(fontSize: 24, fontWeight: .bold),
              ),
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
                            style: TextStyle(fontWeight: .bold, fontSize: 15),
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
                            style: TextStyle(fontWeight: .bold, fontSize: 15),
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
                            style: TextStyle(fontWeight: .bold, fontSize: 15),
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
              Gap(42),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("Today"),
                  Text("\$819.98", style: TextStyle(fontWeight: .bold)),
                ],
              ),
              Divider(height: 28, color: Colors.grey[300]),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("With Scout's timing"),
                  Text("\$708.00", style: TextStyle(fontWeight: .bold)),
                ],
              ),
              Divider(height: 28, color: Colors.grey[300]),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text("You could save"),
                  Text(
                    "\$111.98",
                    style: TextStyle(fontWeight: .bold, color: Colors.green),
                  ),
                ],
              ),
              Gap(32),
              Row(
                spacing: 7,
                children: [
                  Text(
                    "Already in your setup",
                    style: TextStyle(fontWeight: .bold, fontSize: 16),
                  ),
                  Text("5 of 7"),
                ],
              ),
              Gap(16),
              SizedBox(height: 64, child: Placeholder()),
              Gap(16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: .circular(12),
                ),
                padding: .symmetric(vertical: 16),
                child: Center(
                  child: Text(
                    "Review bundle",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Gap(16),
              Center(
                child: Text(
                  "Let Scout time it",
                  style: TextStyle(fontWeight: .bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
