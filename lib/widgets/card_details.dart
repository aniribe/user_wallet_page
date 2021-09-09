import 'package:flutter/cupertino.dart';
import 'package:user_wallet/data.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
              width: 250,
              child: Image.asset('assets/images/mastercardlogo.png')),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                  color: primaryWhite,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '**** **** **** ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text('1930',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500))
                  ],
                ),
                Text(
                  'PLATINUM CARD',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
