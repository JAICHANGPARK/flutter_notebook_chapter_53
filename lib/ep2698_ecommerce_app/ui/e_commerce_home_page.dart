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
          Positioned.fill(
            left: 16,
            right: 16,
            top: 16,
            bottom: 16,
            child: SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: .start,
                spacing: 16,
                children: [
                  Row(
                    spacing: 12,
                    children: [
                      Text("Olivia"),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: .fromRGBO(7, 53, 33, 1),
                        child: Icon(Icons.search),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: .fromRGBO(7, 53, 33, 1),
                        child: Icon(Icons.notifications),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text("Hi Welcome Back!"),
                      Text("Your Health, our Priority"),
                    ],
                  ),

                  SizedBox(height: 42, child: Placeholder()),
                  SizedBox(height: 200, child: Placeholder()),
                  Row(
                    children: [
                      Text("Popular For Your"),
                      Spacer(),
                      Text("View All"),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return Placeholder();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
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
                              spacing: 2,
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
                              spacing: 2,

                              children: [
                                HugeIcon(
                                  icon: HugeIcons.strokeRoundedMenuCircle,
                                ),
                                Text("Home"),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: .center,
                              crossAxisAlignment: .center,
                              spacing: 2,
                              children: [
                                HugeIcon(icon: HugeIcons.strokeRoundedBox),
                                Text("Home"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: .center,
                              crossAxisAlignment: .center,
                              spacing: 2,
                              children: [
                                HugeIcon(icon: HugeIcons.strokeRoundedUser02),
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
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: .fromRGBO(7, 53, 33, 1),
                      foregroundColor: Colors.white,
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedShoppingBasket01,
                      ),
                    ),
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
