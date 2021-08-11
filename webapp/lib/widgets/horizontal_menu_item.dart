import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/constants/controllers.dart';
import 'package:webapp/constants/style.dart';
import 'package:webapp/widgets/custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback ontap;
  const HorizontalMenuItem(
      {Key? key, required this.itemName, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
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
                    width: 6,
                    height: 40,
                    color: dark,
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),
                SizedBox(
                  width: _width / 80,
                ),
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
            ),
          )),
    );
  }
}
