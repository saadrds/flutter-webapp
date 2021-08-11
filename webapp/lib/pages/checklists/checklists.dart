import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/constants/controllers.dart';
import 'package:webapp/helpers/responsiveness.dart';
import 'package:webapp/widgets/custom_text.dart';

class CheckListsPage extends StatelessWidget {
  const CheckListsPage({Key? key}) : super(key: key);

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
            ))
      ],
    );
  }
}
