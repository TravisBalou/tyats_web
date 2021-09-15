import 'package:flutter/material.dart';
import 'package:tyats_web/ui/home_screen.dart';
import 'package:tyats_web/ui/phone_body/projects/projects_body.dart';
import 'package:tyats_web/ui/phone_body/resume/resume_body.dart';

class PhoneBody extends StatelessWidget {
  final MenuActions action;

  PhoneBody({required this.action});

  @override
  Widget build(BuildContext context) {
    switch (action) {
      case MenuActions.projects:
        return ProjectBody();
        break;
      case MenuActions.resume:
        return ResumeBody();
        break;
      case MenuActions.linkedin:
        return Text('LinedIn');
        break;
    }
  }
}
