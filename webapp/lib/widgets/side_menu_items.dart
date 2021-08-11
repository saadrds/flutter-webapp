import 'package:flutter/material.dart';
import 'package:webapp/helpers/responsiveness.dart';
import 'package:webapp/widgets/horizontal_menu_item.dart';
import 'package:webapp/widgets/vertical_menu_item.dart';

class SideMenuItems extends StatelessWidget {
  const SideMenuItems({Key? key, required this.itemName, required this.ontap})
      : super(key: key);
  final String itemName;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    if (Responsiveness.iscustom(context))
      return VerticalMenuItem(itemName: itemName, ontap: ontap);
    else
      return HorizontalMenuItem(itemName: itemName, ontap: ontap);
  }
}
