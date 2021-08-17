import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/constants/style.dart';
import 'package:webapp/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = DefectedListePageName.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) {
      hoverItem.value = itemName;
    }
  }

  isActive(String itemName) {
    return activeItem.value == itemName;
  }

  isHovering(String itemName) {
    return hoverItem.value == itemName;
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case DefectedListePageName:
        return _customIcon(Icons.warning_amber_outlined, itemName);
      case StatisticsPageName:
        return _customIcon(Icons.trending_up, itemName);
      case ChecklistsPageName:
        return _customIcon(Icons.checklist, itemName);
      case AuthentificationPageName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);
    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
