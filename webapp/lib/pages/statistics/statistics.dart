import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/constants/controllers.dart';
import 'package:webapp/helpers/responsiveness.dart';
import 'package:webapp/pages/statistics/widgets/revenue_section_large.dart';
import 'package:webapp/pages/statistics/widgets/revenue_section_small.dart';
import 'package:webapp/pages/statistics/widgets/statistics_cards_large.dart';
import 'package:webapp/pages/statistics/widgets/statistics_cards_medium.dart';
import 'package:webapp/pages/statistics/widgets/statistics_cards_small.dart';
import 'package:webapp/widgets/custom_text.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: Responsiveness.isSmall(context) ? 56 : 6),
                  child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      color: Colors.black,
                      weight: FontWeight.bold),
                )
              ],
            )),
        Expanded(
            child: ListView(
          children: [
            if (Responsiveness.isLarge(context) ||
                Responsiveness.isMeduim(context))
              if (Responsiveness.iscustom(context))
                StatisticCardsMedium()
              else
                StatisticCards()
            else
              StatisticCardsSamll(),
            if (!Responsiveness.isSmall(context))
              RevenueSection()
            else
              RevenueSectionSmall()
          ],
        ))
      ],
    );
  }
}
