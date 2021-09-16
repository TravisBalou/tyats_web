import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tyats_web/models/dart/ui_models.dart';
import 'dart:html' as html;

class FindMeBody extends StatelessWidget {
  const FindMeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //PhoneSize phoneSize = context.watch<PhoneSize>();
    //print(phoneSize.height.toString());
    return Column(
      //mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Find Me',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Consumer<PhoneSize>(
            builder: (BuildContext context, PhoneSize phoneSize, child) {
          print(phoneSize.height.toString());
          return Container(
            height: phoneSize.height * 0.78,
            width: phoneSize.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => html.window.open(
                        'https://www.linkedin.com/in/travisyatsko/', 'new tab'),
                    icon: Icon(FontAwesomeIcons.linkedin),
                    label: Text(
                      'LinkedIn',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () => html.window
                        .open('https://github.com/TravisBalou', 'new tab'),
                    icon: Icon(FontAwesomeIcons.githubSquare),
                    label: Text(
                      'GitHub',
                    ),
                  ),
                ],
              ),
            ),
          );
        })
      ],
    );
  }
}
