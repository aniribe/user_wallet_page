import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_wallet/config/app_colors.dart';
import 'package:user_wallet/config/size.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    double height = SizeConfig.getHeight(context);
    double width = SizeConfig.getWidth(context);

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Title(),
          Notification(width: width),
        ],
      ),
    );
  }
}

class Notification extends StatelessWidget {
  final double width;

  const Notification({required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width / 6,
      width: width / 6,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 199, 201, 203),
              Color.fromARGB(255, 236, 238, 240),
            ]),
        boxShadow: AppColors.neumorpShadowLight,
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          OrangeCircle(),
          TopWhiteCircle(),
          IconBadge(),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.notifications,
        color: Colors.black54,
      ),
    );
  }
}

class TopWhiteCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(11),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromARGB(255, 196, 204, 211),
                  Color.fromARGB(255, 238, 241, 244),
                ]),
            boxShadow: AppColors.neumorpShadow,
            shape: BoxShape.circle),
      ),
    );
  }
}

class OrangeCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromARGB(255, 234, 161, 5),
                Color.fromARGB(255, 255, 174, 0),
              ]),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Michael's Account",
      style: TextStyle(
          fontWeight: FontWeight.w500, fontSize: 25, color: Colors.black54),
    );
  }
}
