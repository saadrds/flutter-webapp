import 'package:flutter/material.dart';
import 'package:webapp/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final VoidCallback onTap;
  const InfoCard(
      {Key? key,
      required this.title,
      required this.value,
      required this.topColor,
      required this.isActive,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 6),
                    color: lightGrey.withOpacity(.1),
                    blurRadius: 12)
              ],
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Row(children: [
                Expanded(
                    child: Container(
                  color: topColor,
                  height: 5,
                ))
              ]),
              Expanded(child: Container()),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "$title\n",
                      style: TextStyle(
                          fontSize: 16, color: isActive ? active : lightGrey)),
                  TextSpan(
                      text: "$value\n",
                      style: TextStyle(
                          fontSize: 42, color: isActive ? active : dark))
                ]),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
