import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tyats_web/models/dart/ui_models.dart';
import 'dart:html' as html;

import 'package:tyats_web/ui/phone_body/find_me/find_me_item.dart';

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
                  FindMeItem(
                    social: 'LinkedIn',
                    socialIcon: FontAwesomeIcons.linkedin,
                    socialURL: 'https://www.linkedin.com/in/travisyatsko/',
                    buttonColor: Color(0xff0072b1),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FindMeItem(
                    social: 'GitHub',
                    socialIcon: FontAwesomeIcons.githubSquare,
                    buttonColor: Color(0xff333333),
                    socialURL: 'https://github.com/TravisBalou',
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
