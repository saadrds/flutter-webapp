import 'package:flutter/material.dart';
import 'package:webapp/pages/statistics/widgets/info_card.dart';

class StatisticCards extends StatelessWidget {
  const StatisticCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
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
        ),
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
    );
  }
}
