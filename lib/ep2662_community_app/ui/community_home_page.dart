import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CommunityHomePage extends StatefulWidget {
  const CommunityHomePage({super.key});

  @override
  State<CommunityHomePage> createState() => _CommunityHomePageState();
}

class _CommunityHomePageState extends State<CommunityHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Column(
            children: [
              Container(
                height: 260,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(47, 92, 222, 1),
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: SafeArea(
            child: Column(
              spacing: 12,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    spacing: 12,
                    children: [
                      Icon(Icons.location_on_rounded, color: Colors.white),
                      Text(
                        "Seoul, South Korea ... ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.keyboard_arrow_down, color: Colors.white),
                      Spacer(),
                      Badge(
                        child: Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Badge(
                        child: Icon(Icons.mail_outline, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 12,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            spacing: 16,
                            children: [
                              Container(
                                // height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: .circular(12),
                                  color: Colors.white,
                                ),
                                padding: .all(12),
                                child: Column(
                                  spacing: 12,
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text(
                                      "Today : Text Text text 1234, 12345 ABC",
                                      style: TextStyle(
                                        fontWeight: .bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      child: Row(
                                        spacing: 4,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey[200]!,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(child: Placeholder()),
                                          Expanded(child: Placeholder()),
                                          Expanded(child: Placeholder()),
                                          Expanded(child: Placeholder()),
                                          Expanded(child: Placeholder()),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200]!,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: .circular(12),
                                  color: Colors.white,
                                ),
                                child: Placeholder(),
                              ),
                              SmoothPageIndicator(
                                count: 3,
                                controller: PageController(),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text(
                                "Upcoming events",
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 16,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: .all(color: Colors.grey[200]!),
                                ),
                                padding: .symmetric(horizontal: 6, vertical: 2),
                                child: Row(
                                  spacing: 4,
                                  children: [
                                    Icon(Icons.apps),
                                    Text("View all"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Container(height: 42, child: Placeholder()),
                        ),
                        Container(
                          margin: .only(left: 16),
                          height: 240,
                          child: Placeholder(),
                        ),
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
