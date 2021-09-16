import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_wallet/config/app_colors.dart';

class ArrowButton extends StatelessWidget {
  final EdgeInsets margin;
  final Widget icon;

  ArrowButton({required this.icon, required this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: margin,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 223, 231, 239),
                Color.fromARGB(255, 202, 208, 213),
              ]),
          borderRadius: BorderRadius.circular(5),
          boxShadow: AppColors.neumorpShadow),
      child: icon,
    );
  }
}
