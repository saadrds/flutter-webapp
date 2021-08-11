import 'package:flutter/material.dart';
import 'package:webapp/pages/defected_list/widgets/defected_list_table.dart';
import 'package:webapp/widgets/custom_text.dart';

class DefectedListPage extends StatelessWidget {
  const DefectedListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(12),
        child: Wrap(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomText(
                text: "saad",
                size: 18,
                color: Colors.black,
                weight: FontWeight.bold),
            Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 100),
                    child: DefectedDataTable(),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100,
            )
          ],
        ));
  }
}
