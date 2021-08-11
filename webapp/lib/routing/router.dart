import 'package:flutter/material.dart';
import 'package:webapp/pages/checklists/checklists.dart';
import 'package:webapp/pages/defected_list/defected_list.dart';
import 'package:webapp/pages/statistics/statistics.dart';
import 'package:webapp/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DefectedListePageRoute:
      return _getPageRoute(DefectedListPage());
    case StatisticsPageRoute:
      return _getPageRoute(StatisticsPage());

    case ChecklistsPageRoute:
      return _getPageRoute(CheckListsPage());

    default:
      return _getPageRoute(DefectedListPage());
  }
}

PageRoute _getPageRoute(Widget child) =>
    MaterialPageRoute(builder: (context) => child);
