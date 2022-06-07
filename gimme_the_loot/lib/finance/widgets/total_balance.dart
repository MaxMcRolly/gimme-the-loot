import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:gimme_the_loot/imports.dart';

class TotalBalanceCard extends StatefulWidget {
  const TotalBalanceCard({Key? key}) : super(key: key);

  @override
  State<TotalBalanceCard> createState() => _TotalBalanceCardState();
}

class _TotalBalanceCardState extends State<TotalBalanceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.orangeAccent, blurRadius: 5, spreadRadius: 2)
        ],
        borderRadius: BorderRadius.circular(4),
        color: Colors.orange,
      ),
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total balance",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text("0,00",
                  style: TextStyle(
                    fontSize: 30,
                  )),
              SizedBox(
                width: 8,
              ),
              Text("BYN", style: TextStyle(fontSize: 25, color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
