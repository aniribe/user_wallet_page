import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_wallet/components/appbar.dart';
import 'package:user_wallet/config/app_colors.dart';
import 'package:user_wallet/config/size.dart';

import '../card_widget.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    double height = SizeConfig.getHeight(context);
    double width = SizeConfig.getWidth(context);

    return Scaffold(
      body: Container(
        color: AppColors.primaryWhite,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Container(
                  height: height / 8,
                  child: CustomAppBar(),
                ),
                Expanded(child: CardWidget())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
