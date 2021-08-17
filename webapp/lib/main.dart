import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/constants/style.dart';
import 'package:webapp/controllers/menu_controller.dart';
import 'package:webapp/layout.dart';
import 'package:webapp/pages/404/error_page.dart';
import 'package:webapp/pages/authentification/authentification.dart';
import 'package:webapp/routing/routes.dart';
import 'controllers/navigation_controller.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthentificationPageRoute,
      unknownRoute: GetPage(
          name: "/error",
          page: () => PageNotFound(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(name: rootRoute, page: () => SiteLayout()),
        GetPage(
            name: AuthentificationPageRoute, page: () => AuthenticationPage())
      ],
      debugShowCheckedModeBanner: false,
      title: 'Dash',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: Colors.blue,
      ),
    );
  }
}
