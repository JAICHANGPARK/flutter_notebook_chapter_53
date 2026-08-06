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
          decoration: BoxDecoration(
            color: Color.fromRGBO(47, 92, 222, 1),
          ),
        ),
        Expanded(child: Placeholder())
      ],))

    ])]);
  }
}
