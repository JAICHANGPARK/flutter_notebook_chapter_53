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
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    spacing: 16,
                    children: [
                      Row(
                        spacing: 12,
                        children: [
                          Icon(Icons.location_on_rounded),
                          Text("Seoul, South Korea ... "),
                          Icon(Icons.keyboard_arrow_down),
                          Spacer(),
                          Badge(
                            child: Icon(Icons.notifications_active_outlined),
                          ),
                          Badge(child: Icon(Icons.mail_outline)),
                        ],
                      ),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: .circular(12),
                          color: Colors.white,
                        ),
                        child: Placeholder(),
                      ),
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: .circular(12),
                          color: Colors.white,
                        ),
                        child: Placeholder(),
                      ),
                      SmoothPageIndicator(count: 3, controller: PageController(),),

                    ],
                  ),
                ),
                Row()
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}
