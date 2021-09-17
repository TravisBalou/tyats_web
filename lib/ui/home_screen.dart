import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tyats_web/models/dart/ui_models.dart';
import 'package:tyats_web/ui/home_screen.dart';
import 'package:tyats_web/ui/phone_body/phone_body.dart';
import 'package:provider/provider.dart';

import 'navigation_actions.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _phoneColor = Colors.black87;
  MenuActions _actionToPass = MenuActions.projects;

  @override
  Widget build(BuildContext context) {
    double _phoneHeight = MediaQuery.of(context).size.height * 0.8;
    // double _phoneWidth = MediaQuery.of(context).size.width * 0.5;
    // print(_phoneWidth);
    double _phoneWidth =
        _setPhoneWidth(MediaQuery.of(context).size.width * 0.5);
    print(_phoneWidth);

    PhoneSize _phoneSize = PhoneSize(width: _phoneWidth, height: _phoneHeight);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Provider.value(
        value: PhoneSize(width: _phoneWidth, height: _phoneHeight),
        // create: (context) {
        //   return PhoneSize(width: _phoneWidth, height: _phoneHeight);
        // },
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/bkgrd.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
            Center(
              child: Container(
                height: 812,
                width: _phoneWidth,
                clipBehavior: Clip.none,
                decoration: ShapeDecoration(
                  shadows: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: _phoneColor, width: 20),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        clipBehavior: Clip.none,
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: ShapeDecoration(
                          color: _phoneColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    NavigationActions(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double _setPhoneWidth(double currentWidth) {
    return currentWidth > 400 ? currentWidth : 400;
  }
}
