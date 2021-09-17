import 'package:flutter/material.dart';
import 'dart:html' as html;

class FindMeItem extends StatelessWidget {
  const FindMeItem({
    Key? key,
    required this.social,
    required this.socialIcon,
    required this.socialURL,
    required this.buttonColor,
  }) : super(key: key);
  final String social;
  final String socialURL;
  final IconData socialIcon;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => html.window.open(socialURL, 'new tab'),
        child: Container(
          height: 60,
          decoration: ShapeDecoration(
            shadows: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: buttonColor,
            shape: RoundedRectangleBorder(
              //side: BorderSide(color: buttonColor, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                socialIcon,
                size: 50,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                social,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
