import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/constants/controllers.dart';
import 'package:webapp/constants/style.dart';
import 'package:webapp/helpers/responsiveness.dart';
import 'package:webapp/routing/routes.dart';
import 'package:webapp/widgets/side_menu_items.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (Responsiveness.isSmall(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: SizedBox(
                            width: 60,
                            child: Image.asset("assets/icons/ve_logo.png"))),
                    SizedBox(width: _width / 48)
                  ],
                ),
              ],
            ),
          SizedBox(
            height: 40,
          ),
          Divider(color: lightGrey.withOpacity(.1)),
          Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItems
                  .map((item) => SideMenuItems(
                        itemName: item.name,
                        ontap: () {
                          if (item.route == AuthentificationPageRoute) {
                            menuController
                                .changeActiveItemTo(DefectedListePageName);
                            Get.offAllNamed(AuthentificationPageRoute);
                          }
                          if (!menuController.isActive(item.name)) {
                            menuController.changeActiveItemTo(item.name);
                            if (Responsiveness.isSmall(context)) {
                              Get.back();
                            }
                            navigationController.NavigateTo(item.route);
                          }
                        },
                      ))
                  .toList())
        ],
      ),
    );
  }
}
