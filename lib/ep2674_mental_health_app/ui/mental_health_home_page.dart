import 'package:material_ui/material_ui.dart';

class MentalHealthHomePage extends StatelessWidget {
  const MentalHealthHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(radius: 26),
              Expanded(child: Column(children: [])),
              Container(
                height: 48,
                width: 48,
                child: Icon(Icons.notifications_none),
                decoration: BoxDecoration(shape: .circle, color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: .05),
                    spreadRadius: 4,
                    blurRadius: 3
                  )
                ],),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
