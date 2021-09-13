import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tyats_web/ui/phone_body/projects/project_item.dart';
import 'package:tyats_web/utilities/responsive_widget.dart';

class ProjectStack extends StatelessWidget {
  const ProjectStack({Key? key, required this.project}) : super(key: key);
  final ProjectName project;

  @override
  Widget build(BuildContext context) {
    switch (project) {
      case ProjectName.Balou:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.swift,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text('Swift'),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.accusoft,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text('Dart/Flutter'),
              ],
            ),
          ],
        );
        break;
      case ProjectName.BalouBids:
        return Row(
          children: [
            Icon(
              FontAwesomeIcons.accusoft,
              size: 20,
            ),
            SizedBox(
              width: 15,
            ),
            Text('Dart/Flutter'),
          ],
        );
        break;
      case ProjectName.Fyto:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.accusoft,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text('Dart/Flutter'),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.moneyBill,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text('Cardano'),
              ],
            )
          ],
        );
    }
  }
}
