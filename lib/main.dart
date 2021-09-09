import 'package:flutter/material.dart';
import 'package:user_wallet/widgets/card_section.dart';
import 'package:user_wallet/widgets/expenses.dart';
import 'package:user_wallet/widgets/header.dart';

import 'data.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryWhite,
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpenseSection()),
        ],
      ),
    );
  }
}
