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
                        Icon(Icons.pets, color: Colors.white),
                        Text("Cats"),
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
                        Icon(Icons.pets, color: Colors.green),
                        Text("Dogs"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      color: Colors.red[100],
                    ),
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: .center,
                      children: [
                        Icon(Icons.pets, color: Colors.red),
                        Text("Rabbits"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      color: Colors.blue[50],
                    ),
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: .center,
                      children: [
                        Icon(Icons.pets, color: Colors.blue),
                        Text("Birds"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      color: Colors.purple[50],
                    ),
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: .center,
                      children: [
                        Icon(Icons.apps_outlined, color: Colors.purple),
                        Text("More"),
                      ],
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
                            padding: .all(16),
                            child: Column(
                              spacing: 6,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  "Give Love\nGet Happiness",
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text("Adopt a pet and fill a heart forever"),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Colors.black,
                                  ),
                                  padding: .only(
                                    left: 16,
                                    right: 6,
                                    bottom: 6,
                                    top: 6,
                                  ),

                                  child: Row(
                                    mainAxisSize: .min,
                                    spacing: 12,
                                    children: [
                                      Text(
                                        "Adopt Now",
                                        style: TextStyle(
                                          fontWeight: .bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 16,
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        child: Icon(Icons.chevron_right),
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
                              color: Colors.pink[100],
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: .1),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 12,
                                  top: 12,
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.red,
                                    child: Icon(Icons.favorite, size: 16),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: .circular(16),
                                      color: Colors.white,
                                    ),
                                    padding: .symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: .start,
                                      spacing: 4,
                                      children: [
                                        Text(
                                          "Luna",
                                          style: TextStyle(fontWeight: .bold),
                                        ),
                                        Text(
                                          "Ragdoll * 8 Months",
                                          style: TextStyle(
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Row(
                                          spacing: 4,
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 16,
                                            ),
                                            Text(
                                              "Seattle, WA",
                                              style: TextStyle(
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
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
