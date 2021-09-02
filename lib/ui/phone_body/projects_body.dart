import 'package:flutter/material.dart';

class ProjectBody extends StatefulWidget {
  const ProjectBody({Key? key}) : super(key: key);

  @override
  _ProjectBodyState createState() => _ProjectBodyState();
}

class _ProjectBodyState extends State<ProjectBody> {
  @override
  Widget build(BuildContext context) {
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
