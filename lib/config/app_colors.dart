import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static Color primaryWhite = Color(0xFFCADCED);

  static List pieColors = [
    Colors.indigo[400],
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.deepOrange,
    Colors.brown,
  ];

  static List<BoxShadow> neumorpShadow = [
    BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: -5,
        offset: Offset(-5, -5),
        blurRadius: 30),
    BoxShadow(
        color: Colors.blue[900]!.withOpacity(.2),
        spreadRadius: 2,
        offset: Offset(7, 7),
        blurRadius: 20)
  ];

  static List<BoxShadow> neumorpShadowLight = [
    BoxShadow(
        color: Colors.white.withOpacity(0.6),
        spreadRadius: -5,
        offset: Offset(-5, -5),
        blurRadius: 30),
    BoxShadow(
        color: Colors.blue[900]!.withOpacity(.2),
        spreadRadius: 2,
        offset: Offset(7, 7),
        blurRadius: 20),
    BoxShadow(
        color: Color.fromARGB(120, 244, 245, 247),
        spreadRadius: 2,
        offset: Offset(-5, 7),
        blurRadius: 15)
  ];

  static List<BoxShadow> neumorpShadowForCircles = [
    BoxShadow(
      color: Colors.blue[900]!.withOpacity(0.2),
      blurRadius: 50,
      spreadRadius: 2,
      offset: Offset(20, 0),
    ),
    BoxShadow(
        color: Colors.white12,
        blurRadius: 0,
        spreadRadius: -2,
        offset: Offset(0, 0))
  ];
}
