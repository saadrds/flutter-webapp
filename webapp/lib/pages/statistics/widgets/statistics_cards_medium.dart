import 'package:flutter/material.dart';

import 'info_card.dart';

class StatisticCardsMedium extends StatelessWidget {
  const StatisticCardsMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
                title: "Defects Number",
                value: "9",
                topColor: Colors.orange,
                isActive: false,
                onTap: () {}),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
                title: "Defects Rate",
                value: "15",
                topColor: Colors.lightGreen,
                isActive: false,
                onTap: () {}),
            SizedBox(
              width: _width / 64,
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            InfoCard(
                title: "this Week",
                value: "3",
                topColor: Colors.redAccent,
                isActive: false,
                onTap: () {}),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
                title: "Drivers",
                value: "22",
                topColor: Colors.blue,
                isActive: false,
                onTap: () {}),
            SizedBox(
              width: _width / 64,
            ),
          ],
        )
      ],
    );
  }
}
