import 'package:flutter/material.dart';
import 'package:webapp/helpers/local_navigator.dart';
import 'package:webapp/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SideMenu()),
        Expanded(
            flex: 5,
            child: Container(
              child: localNaviator(),
              padding: EdgeInsets.symmetric(horizontal: 16),
            )),
      ],
    );
  }
}
