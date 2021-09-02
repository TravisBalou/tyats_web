import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyats_web/models/dart/ui_models.dart';

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
      mainAxisSize: MainAxisSize.max,
      children: [
        Text('Projects'),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 500,
          color: Colors.red,
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Text(
                  index.toString(),
                );
              }),
        ),
      ],
    );
  }
}
