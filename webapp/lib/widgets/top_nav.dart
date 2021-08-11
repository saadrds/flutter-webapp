import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webapp/constants/style.dart';
import 'package:webapp/helpers/responsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !Responsiveness.isSmall(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                )
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                key.currentState!.openDrawer();
              },
            ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          Visibility(
              child: CustomText(
            text: "Dashboard",
            color: lightGrey,
            size: 20,
            weight: FontWeight.bold,
          )),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: dark.withOpacity(.7))),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications, color: dark.withOpacity(.7))),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light, width: 2)),
                ),
              )
            ],
          ),
          Container(
            width: 1,
            height: 1,
            color: lightGrey,
          ),
          SizedBox(
            width: 24,
          ),
          CustomText(
              text: "Admin",
              size: 14,
              color: Colors.black,
              weight: FontWeight.normal),
          SizedBox(
            width: 16,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: light,
                  child: Icon(
                    Icons.person_outline,
                    color: dark,
                  ),
                ),
              ))
        ],
      ),
      iconTheme: IconThemeData(color: dark),
    );
