import 'package:hugeicons/hugeicons.dart';
import 'package:material_ui/material_ui.dart';

class ECommerceHomePage extends StatefulWidget {
  const ECommerceHomePage({super.key});

  @override
  State<ECommerceHomePage> createState() => _ECommerceHomePageState();
}

class _ECommerceHomePageState extends State<ECommerceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 244, 238, 1),
      body: Stack(
        children: [
          Positioned.fill(child: SafeArea(bottom: false, child: Placeholder())),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Container(
              height: 90,
              child: Stack(
                children: [
                  Positioned(
                    top: 8,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: .circular(16),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .center,
                              mainAxisAlignment: .center,
                              children: [
                                HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                                Text("Home"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .center,
                              mainAxisAlignment: .center,
                              children: [
                                HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                                Text("Home"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: .center,
                              crossAxisAlignment: .center,
                              children: [
                                HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                                Text("Home"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .center,
                              children: [
                                HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                                Text("Home"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .center,
                              children: [
                                HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                                Text("Home"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: CircleAvatar(radius: 32),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
