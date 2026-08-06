import 'package:flutter/material.dart';

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
          child: SafeArea(child: Column(children: [])),
        ),
      ],
    );
  }
}
