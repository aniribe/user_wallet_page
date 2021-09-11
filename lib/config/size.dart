import 'package:flutter/cupertino.dart';

class SizeConfig {
  static getHeight(BuildContext context) => MediaQuery.of(context).size.height;

  static getWidth(BuildContext context) => MediaQuery.of(context).size.width;
}
