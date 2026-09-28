import 'package:material_ui/material_ui.dart';

class PetHomePage extends StatefulWidget {
  const PetHomePage({super.key});

  @override
  State<PetHomePage> createState() => _PetHomePageState();
}

class _PetHomePageState extends State<PetHomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16,
        children: [
          Row(
            spacing: 12,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Hello, Dream",
                      style: TextStyle(fontWeight: .bold, fontSize: 20),
                    ),
                    Text("Good pets make a great life!"),
                  ],
                ),
              ),
              Container(
                padding: .all(8),
                decoration: BoxDecoration(
                  shape: .circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .1),
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Badge(child: Icon(Icons.notifications_none)),
              ),
              CircleAvatar(radius: 24),
            ],
          ),
          Container(
            height: 52,
            child: Row(
              spacing: 16,
              children: [
                Expanded(
                  child: Container(
                    padding: .only(left: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: .circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        border: .none,
                        hintText: "Search pets, breeds, or location...",
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: .circular(12),
                    color: Colors.orange,
                  ),
                  padding: .all(12),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(Icons.tune, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 88,
            child: Row(
              spacing: 12,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      color: Colors.orange,
                    ),
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: .center,
                      children: [
                        Icon(Icons.pets, color: Colors.white,),
                        Text("Cats")
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      color: Colors.green[50],
                    ),
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: .center,
                      children: [
                        Icon(Icons.pets, color: Colors.green,),
                        Text("Dogs")
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      color: Colors.red,
                    ),
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: .center,
                      children: [
                        Icon(Icons.pets, color: Colors.green,),
                        Text("Dogs")
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      color: Colors.blue,
                    ),
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: .center,
                      children: [
                        Icon(Icons.pets, color: Colors.green,),
                        Text("Dogs")
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      color: Colors.purple,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 16,
                crossAxisAlignment: .start,
                children: [
                  Container(
                    height: 180,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          top: 16,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: .circular(12),
                              color: Colors.green[50],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Recommended for You",
                    style: TextStyle(fontWeight: .bold, fontSize: 19),
                  ),
                  Container(
                    height: 260,
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: .circular(16),
                              color: Colors.pink,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: .circular(16),
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ],
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
