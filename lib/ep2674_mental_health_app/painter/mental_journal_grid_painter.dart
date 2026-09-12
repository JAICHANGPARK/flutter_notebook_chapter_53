import 'package:flutter/material.dart';

class MentalJournalGridPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    const gridData = [];

    const rows = 4;
    const cols = 8;
    const spacing = 4.0;

    final cellSize = (size.width - (spacing * (cols - 1))) / cols;
    final paint = Paint()..style = .fill;

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {

    return false;
  }
}