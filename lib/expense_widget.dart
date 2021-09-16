import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_wallet/components/arrow_button.dart';
import 'package:user_wallet/config/app_colors.dart';
import 'config/data.dart';

import 'components/pie_chart.dart';

class ExpensesWidget extends StatefulWidget {
  @override
  _ExpensesWidgetState createState() => _ExpensesWidgetState();
}

class _ExpensesWidgetState extends State<ExpensesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleSection(),
              ArrowButtonsSection(),
            ],
          ),
        ),
        DataSection()
      ],
    );
  }
}

class DataSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        CategorySection(),
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.only(right: 10),
            child: PieChart(),
          ),
        )
      ],
    ));
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        children: category.map((data) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: AppColors.pieColors[category.indexOf(data)],
                    shape: BoxShape.circle,
                  ),
                ),
                Text(
                  data['name'],
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20),
        child: Text(
          'Monthly Expenses',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54),
        ));
  }
}

class ArrowButtonsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Row(
        children: [
          ArrowButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 17,
                color: Colors.black54,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
          ArrowButton(
            margin: EdgeInsets.only(top: 1),
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 17,
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
