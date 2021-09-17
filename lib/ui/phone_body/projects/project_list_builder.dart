import 'package:flutter/material.dart';
import 'package:tyats_web/ui/phone_body/projects/project_item.dart';

class ProjectsListBuilder extends StatefulWidget {
  const ProjectsListBuilder({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  final double height;
  final double width;

  @override
  _ProjectsListBuilderState createState() => _ProjectsListBuilderState();
}

class _ProjectsListBuilderState extends State<ProjectsListBuilder> {
  @override
  Widget build(BuildContext context) {
    print('this is the height' + widget.height.toString());
    print('this is the width' + widget.width.toString());
    List<ProjectName> projects = [
      ProjectName.Balou,
      ProjectName.BalouBids,
      ProjectName.Fyto,
    ];
    return Container(
      height: widget.height,
      width: widget.width,
      child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return ProjectItem(
              projectName: projects[index],
            );
          }),
    );
  }
}
