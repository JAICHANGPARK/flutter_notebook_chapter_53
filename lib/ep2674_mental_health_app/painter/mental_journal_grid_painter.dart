import 'package:flutter/material.dart';

class MentalJournalGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const gridData = [
      [0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
      [0.4, 0.2, 0.65, 0.0, 0.35, 0.0, 0.0, 0.0],
      [0.35, 0.2, 0.35, 0.15, 0.1, 0.0, 0.45, 0.35],
      [0.35, 0.2, 0.5, 0.6, 0.6, 0.55, 0.6, 0.55],
    ];

    const rows = 4;
    const cols = 8;
    const spacing = 4.0;

    final cellSize = (size.width - (spacing * (cols - 1))) / cols;
    final paint = Paint()..style = .fill;

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        final opacity = gridData[r][c];
        if (opacity == 0.0) continue;
        final x = c * (cellSize + spacing);
        final y =
            (size.height - (rows * (cellSize + spacing) - spacing)) +
            r * (cellSize + spacing);

        final rect = RRect.fromRectAndRadius(
          .fromLTWH(x, y, cellSize, cellSize),
          const .circular(3),
        );

        paint.color = Color(0xffff8a50).withValues(alpha: opacity);
        canvas.drawRRect(rect, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
