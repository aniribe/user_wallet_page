import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:user_wallet/config/app_colors.dart';

class PieChartCustomPainter extends CustomPainter {
  final List categories;
  final double width;

  PieChartCustomPainter({required this.categories, required this.width});

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = getCenter(size);
    double radius = getRadius(size);
    double total = 0;
    double startRadian = getStartRadian();

    var paint = getPaint();

    categories.forEach((f) => total += f['amount']);

    for (var i = 0; i < categories.length; i++) {
      final currentCategory = categories[i];
      final sweepRadian = (currentCategory['amount'] / total) * 2 * pi;
      paint.color = AppColors.pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  Offset getCenter(Size size) => Offset(size.width / 2, size.height / 2);

  double getRadius(Size size) => min(size.width / 2, size.height / 2);

  double getStartRadian() => -pi / 2;

  Paint getPaint() {
    return Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width / 1.8;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
