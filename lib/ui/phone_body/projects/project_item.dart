import 'package:flutter/material.dart';
import 'dart:html' as html;

enum ProjectName {
  Balou,
  BalouBids,
  Fyto,
}

class ProjectItem extends StatelessWidget {
  const ProjectItem({Key? key, required this.projectName}) : super(key: key);
  final ProjectName projectName;
  @override
  Widget build(BuildContext context) {
    switch (projectName) {
      case ProjectName.Balou:
        return _projectItem(
          context,
          'Balou',
          'balou_hero.jpg',
          'https://www.balouapp.com',
        );
        break;
      case ProjectName.BalouBids:
        return _projectItem(
          context,
          'Balou Bids',
          'bids_hero.png',
          'https://www.balouapp.com',
        );
        break;
      case ProjectName.Fyto:
        return _projectItem(
          context,
          'Fytoborous',
          'fyto_hero.png',
          'https://fytoboros.com/#/',
        );
        break;
    }
  }

  Widget _projectItem(
      BuildContext context, String name, String imageName, String websiteURL) {
    return Column(
      children: [
        Container(
          height: 200,
          color: Colors.white10,
          child: Row(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    imageName,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () => html.window.open(websiteURL, 'new tab'),
                    icon: Icon(Icons.web),
                    label: Text('Website'),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
