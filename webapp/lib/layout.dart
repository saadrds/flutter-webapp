import 'package:flutter/material.dart';
import 'package:webapp/helpers/responsiveness.dart';
import 'package:webapp/widgets/large_screen.dart';
import 'package:webapp/widgets/side_menu.dart';
import 'package:webapp/widgets/small_screen.dart';
import 'package:webapp/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(child: SideMenu()),
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      body: Responsiveness(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        meduimScreen: LargeScreen(),
      ),
    );
  }
}
