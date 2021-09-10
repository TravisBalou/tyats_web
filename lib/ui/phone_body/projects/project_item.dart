import 'package:flutter/material.dart';

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
        );
        break;
      case ProjectName.BalouBids:
        return _projectItem(context, 'BalouBids', 'bids_hero.png');
        break;
      case ProjectName.Fyto:
        return _projectItem(
          context,
          'Fytoborous',
          'fyto_hero.png',
        );
        break;
    }
  }

  Widget _projectItem(BuildContext context, String name, String imageName) {
    return Container(
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
          Text(
            name,
          ),
        ],
      ),
    );
  }
}
