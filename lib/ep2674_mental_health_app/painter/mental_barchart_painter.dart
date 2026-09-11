import 'package:flutter/material.dart';

class MentalBarchartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final barHeight = [0.4, 0.45, 0.35];
    final barCount = barHeight.length;
    final spacing = 4.0;
    final barWidth = (size.width - (spacing * (barCount - 1))) / barCount;

    final paint = Paint()..style = .fill;
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
