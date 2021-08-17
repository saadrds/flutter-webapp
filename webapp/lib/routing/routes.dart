const DefectedListePageName = "Defected List";
const StatisticsPageName = "Statistics";
const ChecklistsPageName = "Checklists";
const AuthentificationPageName = "Log out";

const DefectedListePageRoute = "/defected";
const StatisticsPageRoute = "/statistics";
const ChecklistsPageRoute = "/checklists";
const AuthentificationPageRoute = "/auth";

const rootRoute = "/";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(DefectedListePageName, DefectedListePageRoute),
  MenuItem(StatisticsPageName, StatisticsPageRoute),
  MenuItem(ChecklistsPageName, ChecklistsPageRoute),
  MenuItem(AuthentificationPageName, AuthentificationPageRoute),
];
