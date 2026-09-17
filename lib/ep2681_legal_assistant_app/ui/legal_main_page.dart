import 'package:material_ui/material_ui.dart';

class LegalMainPage extends StatefulWidget {
  const LegalMainPage({super.key});

  @override
  State<LegalMainPage> createState() => _LegalMainPageState();
}

class _LegalMainPageState extends State<LegalMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                // gradient: RadialGradient(
                //   center: Alignment(-1.0, -0.8), // 좌측 상단 모서리에 광원 배치
                //   radius: 1.6,                   // 화면 전체로 퍼지는 반경
                //   colors: [
                //     Color.fromRGBO(35, 33, 56, 1),
                //     Colors.black,
                //     Color.fromRGBO(66, 63, 64, 1),        // 외곽 완전 어두운 톤
                //   ],
                //   stops: [0.0, 0.5, 1.0],
                // ),
                gradient: LinearGradient(
                  begin: .topLeft,
                  end: .bottomLeft,
                  colors: [
                    Color.fromRGBO(35, 33, 56, 1),
                    Colors.black,
                    // Color.fromRGBO(66, 63, 64, 1),
                  ],
                  stops: [0.0, 0.45, ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
