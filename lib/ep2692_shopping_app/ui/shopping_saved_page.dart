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
      ],
    );
  }
}
