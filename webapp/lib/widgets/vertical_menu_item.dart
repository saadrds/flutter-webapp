import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/constants/controllers.dart';
import 'package:webapp/constants/style.dart';

import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  const VerticalMenuItem(
      {Key? key, required this.itemName, required this.ontap})
      : super(key: key);
  final String itemName;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("notHovering");
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  child: Container(
                    width: 3,
                    height: 72,
                    color: dark,
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),
                Expanded(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: menuController.returnIconFor(itemName),
                    ),
                    if (!menuController.isActive(itemName))
                      Flexible(
                          child: CustomText(
                              text: itemName,
                              size: 14,
                              color: menuController.isHovering(itemName)
                                  ? dark
                                  : lightGrey,
                              weight: FontWeight.normal))
                    else
                      Flexible(
                          child: CustomText(
                              text: itemName,
                              size: 18,
                              color: dark,
                              weight: FontWeight.bold))
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
