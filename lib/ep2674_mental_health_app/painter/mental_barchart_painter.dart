import 'package:flutter/material.dart';

class MentalBarchartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final barHeight = [0.4, 0.45, 0.35];
    final barCount = barHeight.length;
    final spacing = 4.0;
    final barWidth = (size.width - (spacing * (barCount - 1))) / barCount;

    final paint = Paint()..style = .fill;
    for (int i = 0; i < barCount; i++) {
      final x = i * (barWidth + spacing);
      final h = size.height * barHeight[i];
      final rect = RRect.fromRectAndRadius(
        Rect.fromLTWH(x, size.height, barWidth, h),
        Radius.circular(2),
      );

      final colorOpacity = (barHeight[i] * .7 + .3).clamp(.1, 1);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
