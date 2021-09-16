import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_wallet/config/app_colors.dart';
import 'package:user_wallet/config/size.dart';

class BankCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = SizeConfig.getWidth(context);
    final double height = SizeConfig.getHeight(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Stack(
        children: [
          CardLogoSection(width: width),
          CardNumberSection(height: height),
          CardChipSection(height: height, width: width),
        ],
      ),
    );
  }
}

class CardChipSection extends StatelessWidget {
  final double height;
  final double width;

  const CardChipSection({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: height / 16,
        width: width / 6,
        decoration: BoxDecoration(
          color: AppColors.primaryWhite,
          boxShadow: AppColors.neumorpShadow,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

class CardNumberSection extends StatelessWidget {
  final double height;

  const CardNumberSection({required this.height});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: height / 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '**** **** **** ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
                Text(
                  '1930',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                )
              ],
            ),
            Text(
              'Platinum Card',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}

class CardLogoSection extends StatelessWidget {
  final double width;

  const CardLogoSection({required this.width});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: width / 2,
        child: Image.asset(
          'assets/images/mastercardlogo.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
