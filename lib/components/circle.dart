import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_wallet/config/app_colors.dart';

class DecorativeCircle extends StatelessWidget {
  final double top;
  final double left;
  final double bottom;

  DecorativeCircle(
      {required this.top, required this.left, required this.bottom});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: top,
      bottom: bottom,
      left: left,
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white30,
            boxShadow: AppColors.neumorpShadowForCircles),
      ),
    );
  }
}
