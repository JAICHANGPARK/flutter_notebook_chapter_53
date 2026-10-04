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
                        SizedBox(height: 62, child: Row(children: [
                          Container(
                            decoration: BoxDecoration(),
                          )

                        ])),
                        Divider(),
                        SizedBox(height: 62, child: Placeholder()),
                        Divider(),
                        SizedBox(height: 62, child: Placeholder()),
                        Divider(),
                        Row(
                          children: [
                            Text("Your lists"),
                            TextButton(
                              onPressed: () {},
                              child: Text("See all"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 120,
                          child: Row(
                            spacing: 24,
                            children: [
                              Expanded(child: Placeholder()),
                              Expanded(child: Placeholder()),
                            ],
                          ),
                        ),
                        Gap(12),
                        Text("Recently views"),
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
