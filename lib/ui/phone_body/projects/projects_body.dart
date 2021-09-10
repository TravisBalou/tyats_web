import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyats_web/models/dart/ui_models.dart';
import 'package:tyats_web/ui/phone_body/projects/project_item.dart';

class ProjectBody extends StatefulWidget {
  const ProjectBody({Key? key}) : super(key: key);

  @override
  _ProjectBodyState createState() => _ProjectBodyState();
}

class _ProjectBodyState extends State<ProjectBody> {
  @override
  Widget build(BuildContext context) {
    PhoneSize phoneSize = context.watch<PhoneSize>();
    print(phoneSize.height.toString());
    return Column(
      //mainAxisSize: MainAxisSize.max,
      children: [
        Text('Projects'),
        SizedBox(
          height: 10,
        ),
        Container(
          height: phoneSize.height * 0.8,
          width: phoneSize.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProjectItem(
                  projectName: ProjectName.Balou,
                ),
                ProjectItem(
                  projectName: ProjectName.BalouBids,
                ),
                ProjectItem(
                  projectName: ProjectName.Fyto,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
