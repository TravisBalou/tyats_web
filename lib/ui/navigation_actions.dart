import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tyats_web/ui/phone_body/phone_body.dart';

enum MenuActions {
  findME,
  projects,
  resume,
}

class NavigationActions extends StatefulWidget {
  const NavigationActions({Key? key}) : super(key: key);

  @override
  _NavigationActionsState createState() => _NavigationActionsState();
}

class _NavigationActionsState extends State<NavigationActions> {
  MenuActions _actionToPass = MenuActions.projects;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
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
