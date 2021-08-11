import 'package:flutter/material.dart';
import 'package:webapp/pages/statistics/widgets/info_cards_small.dart';

class StatisticCardsSamll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
              title: "Defects Number",
              value: "9",
              topColor: Colors.orange,
              isActive: true,
              onTap: () {}),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
              title: "Defects Rate",
              value: "15",
              topColor: Colors.lightGreen,
              isActive: false,
              onTap: () {}),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
              title: "this Week",
              value: "3",
              topColor: Colors.redAccent,
              isActive: false,
              onTap: () {}),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
              title: "Drivers",
              value: "22",
              topColor: Colors.blue,
              isActive: false,
              onTap: () {}),
          SizedBox(
            height: _width / 64,
          ),
        ],
      ),
    );
  }
}
