import 'package:flutter/material.dart';
import 'package:tyats_web/models/dart/ui_models.dart';
import 'package:provider/provider.dart';

import '../navigation_actions.dart';

class HomeScreenSmall extends StatefulWidget {
  HomeScreenSmall({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenSmallState createState() => _HomeScreenSmallState();
}

class _HomeScreenSmallState extends State<HomeScreenSmall> {
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
      backgroundColor: Colors.white,
      body: Provider.value(
        value: PhoneSize(width: _phoneWidth, height: _phoneHeight),
        child: NavigationActions(),
      ),
    );
  }

  double _setPhoneWidth(double currentWidth) {
    return currentWidth > 400 ? currentWidth : 400;
  }
}
