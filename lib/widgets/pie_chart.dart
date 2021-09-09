import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:user_wallet/data.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: customShadow,
            color: primaryWhite),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PieChartPainter(),
              ),
            ),
            Center(
              child: Container(
                height: 70,
                width: 70,
                child: Center(child: Text('\$1234')),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: customShadow,
                    color: primaryWhite),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;

    double total = 0;
    expenses.forEach((element) {
      total += element['amount'];
    });

    var startRadian = -pi / 2;

    for (int i = 0; i < expenses.length; i++) {
      var currentExpense = expenses[i];

      var sweepRadian = (currentExpense['amount'] / total) * 2 * pi;

      paint.color = pieColors[i];

      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);

      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
