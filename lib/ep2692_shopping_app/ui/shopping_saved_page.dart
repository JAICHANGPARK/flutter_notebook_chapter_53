import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:material_ui/material_ui.dart';

class ShoppingSavedPage extends StatefulWidget {
  const ShoppingSavedPage({super.key});

  @override
  State<ShoppingSavedPage> createState() => _ShoppingSavedPageState();
}

class _ShoppingSavedPageState extends State<ShoppingSavedPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        AppBar(
          title: Text("Saved"),
          titleTextStyle: TextStyle(
            fontWeight: .bold,
            fontSize: 28,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          actionsPadding: .only(right: 16),

          actions: [
            HugeIcon(icon: HugeIcons.strokeRoundedNotification02),
            Gap(12),
            CircleAvatar(radius: 20),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              spacing: 24,
              children: [
                Container(height: 42, child: Placeholder()),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 3,
                      crossAxisAlignment: .start,
                      children: [
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
                                      style: TextStyle(
                                        fontWeight: .bold,
                                        fontSize: 16,
                                      ),
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
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 16,
                                ),
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
                                      style: TextStyle(
                                        fontWeight: .bold,
                                        fontSize: 16,
                                      ),
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
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 16,
                                ),
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
                                      style: TextStyle(
                                        fontWeight: .bold,
                                        fontSize: 16,
                                      ),
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
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              "Your lists",
                              style: TextStyle(fontWeight: .bold, fontSize: 16),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("See all"),
                            ),
                          ],
                        ),
                        SizedBox(
                          child: Row(
                            spacing: 24,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Row(
                                      spacing: 4,
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 52,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius: .circular(16),
                                          ),
                                        ),
                                        Container(
                                          height: 52,
                                          width: 52,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius: .circular(16),
                                          ),
                                        ),
                                        Container(
                                          height: 52,
                                          width: 52,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius: .circular(16),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(12),
                                    Text(
                                      "Travel setup",
                                      style: TextStyle(fontWeight: .bold),
                                    ),
                                    Gap(2),
                                    Text(
                                      "3 items \$398 left",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Row(
                                      spacing: 4,
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 52,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius: .circular(16),
                                          ),
                                        ),
                                        Container(
                                          height: 52,
                                          width: 52,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius: .circular(16),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(12),
                                    Text(
                                      "Home office",
                                      style: TextStyle(fontWeight: .bold),
                                    ),
                                    Gap(2),
                                    Text(
                                      "5 of 7 done",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Gap(12),
                        Text(
                          "Recently views",
                          style: TextStyle(fontWeight: .bold, fontSize: 16),
                        ),
                        Gap(12),
                        SizedBox(height: 200, child: Placeholder()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
