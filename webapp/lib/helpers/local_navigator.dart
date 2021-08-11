import 'package:flutter/cupertino.dart';
import 'package:webapp/constants/controllers.dart';
import 'package:webapp/routing/router.dart';
import 'package:webapp/routing/routes.dart';

Navigator localNaviator() => Navigator(
      key: navigationController.navigatorKey,
      initialRoute: DefectedListePageRoute,
      onGenerateRoute: generateRoute,
    );
