import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int meduimScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class Responsiveness extends StatelessWidget {
  const Responsiveness(
      {Key? key,
      required this.largeScreen,
      required this.meduimScreen,
      required this.smallScreen})
      : super(key: key);

  final Widget largeScreen;
  final Widget meduimScreen;
  final Widget smallScreen;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      if (_width >= largeScreenSize)
        return largeScreen;
      else if (_width < largeScreenSize && _width >= meduimScreenSize)
        return meduimScreen;
      else
        return smallScreen;
    });
  }

  //methods for detecting the screen size
  static bool isSmall(BuildContext context) =>
      MediaQuery.of(context).size.width < meduimScreenSize;

  static bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isMeduim(BuildContext context) =>
      MediaQuery.of(context).size.width >= meduimScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool iscustom(BuildContext context) =>
      MediaQuery.of(context).size.width >= meduimScreenSize &&
      MediaQuery.of(context).size.width <= customScreenSize;
}
