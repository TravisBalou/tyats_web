import 'package:flutter/material.dart';
import 'package:tyats_web/ui/phone_body/projects/project_stack.dart';
import 'package:tyats_web/utilities/expanded_setion.dart';
import 'dart:html' as html;
import 'package:tyats_web/utilities/responsive_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum ProjectName {
  Balou,
  BalouBids,
  Fyto,
}

class ProjectItem extends StatefulWidget {
  const ProjectItem({Key? key, required this.projectName}) : super(key: key);
  final ProjectName projectName;

  @override
  _ProjectItemState createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool _showExpanded = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.projectName) {
      case ProjectName.Balou:
        return _projectItem(
          context,
          ProjectName.Balou,
          'Balou',
          'balou_hero.jpg',
          'https://www.balouapp.com',
        );
        break;
      case ProjectName.BalouBids:
        return _projectItem(
          context,
          ProjectName.BalouBids,
          'Balou Bids',
          'bids_hero.png',
          'https://www.balouapp.com',
        );
        break;
      case ProjectName.Fyto:
        return _projectItem(
          context,
          ProjectName.Fyto,
          'Fytoborous',
          'fyto_hero.png',
          'https://fytoboros.com/#/',
        );
        break;
    }
  }

  Widget _projectItem(BuildContext context, ProjectName _project, String name,
      String imageName, String websiteURL) {
    return Column(
      children: [
        Container(
          height: 200,
          color: Colors.white10,
          child: Row(
            children: [
              SizedBox(
                height: 125,
                width: 125,
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
                    icon: Icon(
                      FontAwesomeIcons.globeAmericas,
                      size: 20,
                    ),
                    label: Text('Website'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //ProjectStack(project: _project),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print(_showExpanded);
                        _showExpanded = !_showExpanded;
                        print(_showExpanded);
                      });
                    },
                    child: Text('Read More'),
                  ),
                ],
              ),
            ],
          ),
        ),
        ExpandedSection(
          child: Text('Test'),
          expand: _showExpanded,
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
