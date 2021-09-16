import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_wallet/config/app_colors.dart';
import 'package:user_wallet/config/size.dart';
import 'components/bank_card.dart';
import 'components/circle.dart';

class CardWidget extends StatefulWidget {
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    double height = SizeConfig.getHeight(context);
    double width = SizeConfig.getWidth(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            "Card Selected",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    width: width,
                    margin: EdgeInsets.symmetric(
                        vertical: height / 30, horizontal: 20),
                    decoration: BoxDecoration(
                      boxShadow: AppColors.neumorpShadow,
                      color: AppColors.primaryWhite,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        DecorativeCircle(top: 150, bottom: -200, left: 0),
                        DecorativeCircle(top: -100, bottom: -100, left: -300),
                        BankCard(),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
