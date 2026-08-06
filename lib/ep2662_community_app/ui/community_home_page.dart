import 'package:flutter/material.dart';

class CommunityHomePage extends StatefulWidget {
  const CommunityHomePage({super.key});

  @override
  State<CommunityHomePage> createState() => _CommunityHomePageState();
}

class _CommunityHomePageState extends State<CommunityHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [Stack(children: [
      Positioned(child: Column(children: [
        Container(
          height: 320,
          child: Placeholder(),
        ),
        Expanded(child: Placeholder())
      ],))

    ])]);
  }
}
