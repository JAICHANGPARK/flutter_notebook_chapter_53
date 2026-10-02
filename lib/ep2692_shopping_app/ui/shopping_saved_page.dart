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
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          actions: [
            HugeIcon(icon: HugeIcons.strokeRoundedNotification02),
            CircleAvatar(radius: 24),
          ],
        ),
      ],
    );
  }
}
