import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyats_web/models/dart/ui_models.dart';
import 'package:tyats_web/ui/phone_body/projects/project_list_builder.dart';
import 'package:tyats_web/utilities/responsive_widget.dart';

class ProjectBody extends StatefulWidget {
  const ProjectBody({Key? key}) : super(key: key);

  @override
  _ProjectBodyState createState() => _ProjectBodyState();
}

class _ProjectBodyState extends State<ProjectBody> {
  @override
  Widget build(BuildContext context) {
    //PhoneSize phoneSize = context.watch<PhoneSize>();
    //print(phoneSize.height.toString());
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Projects',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        ResponsiveWidget.isSmallScreen(context)
            ? ProjectsListBuilder(
                height: MediaQuery.of(context).size.height * 0.86,
                width: MediaQuery.of(context).size.width,
              )
            : Consumer<PhoneSize>(
                builder: (BuildContext context, PhoneSize phoneSize, child) {
                print(phoneSize.height.toString());
                return ProjectsListBuilder(
                  height: phoneSize.height * 0.78,
                  width: phoneSize.width,
                );
              }),
      ],
    );
  }
}
