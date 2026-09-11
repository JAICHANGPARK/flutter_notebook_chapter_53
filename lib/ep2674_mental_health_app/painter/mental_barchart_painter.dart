import 'package:flutter/material.dart';

class MentalBarchartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final barHeights = [
      0.35, 0.48, 0.40, 0.65, 0.85, 1.0, 0.80, 0.55, 0.28, 0.42, 0.40, 0.28, 0.22, 0.18, 0.12
    ];
    final barCount = barHeights.length;
    final spacing = 4.0;
    final barWidth = (size.width - (spacing * (barCount - 1))) / barCount;

    final paint = Paint()..style = .fill;
    for (int i = 0; i < barCount; i++) {
      final x = i * (barWidth + spacing);
      final h = size.height * barHeights[i];

      final rect = RRect.fromRectAndRadius(
        Rect.fromLTWH(x, size.height - h, barWidth, h),
        Radius.circular(barWidth / 2),
      );

      final colorOpacity = (barHeights[i] * .7 + .3).clamp(.1, 1).toDouble();
      paint.color = Colors.orangeAccent.withValues(alpha: colorOpacity);

      canvas.drawRRect(rect, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
