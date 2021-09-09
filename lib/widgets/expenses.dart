import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_wallet/data.dart';
import 'package:user_wallet/widgets/pie_chart.dart';

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Expanses',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
        Row(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: expenses
                        .map((value) => Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor:
                                        pieColors[expenses.indexOf(value)],
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    value['name'],
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                )),
            Expanded(flex: 6, child: PieChart()),
          ],
        ),
      ],
    );
  }
}
