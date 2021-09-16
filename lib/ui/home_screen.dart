import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tyats_web/models/dart/ui_models.dart';
import 'package:tyats_web/ui/home_screen.dart';
import 'package:tyats_web/ui/phone_body/phone_body.dart';
import 'package:provider/provider.dart';

enum MenuActions {
  findME,
  projects,
  resume,
}

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
      backgroundColor: Colors.lightBlueAccent.shade200,
      body: Provider.value(
        value: PhoneSize(width: _phoneWidth, height: _phoneHeight),
        // create: (context) {
        //   return PhoneSize(width: _phoneWidth, height: _phoneHeight);
        // },
        child: Center(
          child: Container(
            height: 812,
            width: _phoneWidth,
            clipBehavior: Clip.none,
            decoration: ShapeDecoration(
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/headshot.jpeg',
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          hamburger(context),
                        ],
                      ),
                      PhoneBody(
                        action: _actionToPass,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double _setPhoneWidth(double currentWidth) {
    return currentWidth > 400 ? currentWidth : 400;
  }

  Widget hamburger(BuildContext context) {
    return PopupMenuButton<MenuActions>(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      icon: Icon(
        FontAwesomeIcons.bars,
        color: Colors.black87,
      ),
      itemBuilder: (context) => <PopupMenuEntry<MenuActions>>[
        const PopupMenuItem(
          child: Text('Projects'),
          value: MenuActions.projects,
        ),
        const PopupMenuItem(
          child: Text('Resume'),
          value: MenuActions.resume,
        ),
        const PopupMenuItem(
          child: Text('Find Me'),
          value: MenuActions.findME,
        ),
      ],
      onSelected: (MenuActions result) {
        switch (result) {
          case MenuActions.projects:
            {
              print(result);
              setState(() {
                _actionToPass = MenuActions.projects;
              });
            }
            break;
          case MenuActions.resume:
            {
              print(result);
              setState(() {
                _actionToPass = MenuActions.resume;
              });
            }
            break;
          case MenuActions.findME:
            {
              print(result);
              setState(() {
                _actionToPass = MenuActions.findME;
              });
            }
            break;
        }
      },
    );
  }
}
