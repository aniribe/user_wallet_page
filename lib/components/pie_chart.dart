import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_wallet/components/pie_chart_custom_painter.dart';
import 'package:user_wallet/config/app_colors.dart';
import 'package:user_wallet/config/size.dart';

import '../config/data.dart';

class PieChart extends StatefulWidget {
  @override
  _PieChartState createState() => _PieChartState();
}

class _PieChartState extends State<PieChart>
    with SingleTickerProviderStateMixin {
  double total = 0;

  @override
  void initState() {
    super.initState();
    category.forEach((e) => total += e['amount']);
  }

  @override
  Widget build(BuildContext context) {
    final double width = SizeConfig.getWidth(context);

    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        decoration: BoxDecoration(
          color: AppColors.primaryWhite,
          shape: BoxShape.circle,
          boxShadow: AppColors.neumorpShadow,
        ),
        child: Stack(
          children: [
            ColorfulSection(constraint: constraint),
            AmountSection(total: total, constraint: constraint),
          ],
        ),
      );
    });
  }
}

class AmountSection extends StatelessWidget {
  final double total;
  final BoxConstraints constraint;

  const AmountSection({required this.total, required this.constraint});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: constraint.maxWidth * 0.4,
        decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(3, 3),
                color: Colors.black38,
              )
            ]),
        child: Center(
          child: Text(
            '\$ ${total.toString()}',
            style: TextStyle(),
          ),
        ),
      ),
    );
  }
}

class ColorfulSection extends StatelessWidget {
  final BoxConstraints constraint;

  const ColorfulSection({required this.constraint});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: constraint.maxWidth * 0.65,
        child: CustomPaint(
          child: Container(),
          foregroundPainter: PieChartCustomPainter(
              width: constraint.maxWidth * 0.5, categories: category),
        ),
      ),
    );
  }
}
