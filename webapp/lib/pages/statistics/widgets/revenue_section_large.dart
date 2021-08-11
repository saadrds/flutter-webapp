import 'package:flutter/material.dart';
import 'package:webapp/constants/style.dart';
import 'package:webapp/pages/statistics/widgets/bar_charts.dart';
import 'package:webapp/pages/statistics/widgets/revenue_info.dart';
import 'package:webapp/widgets/custom_text.dart';

class RevenueSection extends StatelessWidget {
  const RevenueSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12)
          ],
          border: Border.all(color: lightGrey, width: .5)),
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                  text: "Chart",
                  size: 20,
                  color: lightGrey,
                  weight: FontWeight.bold),
              Container(
                width: 600,
                height: 200,
                child: SimpleBarChart.withSampleData(),
              )
            ],
          )),
          Container(
            width: 1,
            height: 120,
            color: lightGrey,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  RevenueInfo(title: "today's Defects", amount: "23"),
                  RevenueInfo(title: "Last week", amount: "53"),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  RevenueInfo(title: "Last Month", amount: "145"),
                  RevenueInfo(title: "Last year", amount: "2152"),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
