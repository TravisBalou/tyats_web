import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum MenuActions {
  linkedin,
  projects,
  resume,
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _phoneColor = Colors.black87;

  @override
  Widget build(BuildContext context) {
    double _phoneHeight = MediaQuery.of(context).size.height * 0.8;
    double _phoneWidth = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade200,
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.menu),
      //     onPressed: () => print(
      //       'hamburger pressed',
      //     ),
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: Center(
        child: Container(
          height: _phoneHeight,
          width: _phoneWidth,
          decoration: ShapeDecoration(
            //color: Colors.black,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: _phoneColor, width: 20),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
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
              child: OverflowBox(
                maxHeight: _phoneHeight - 20,
                maxWidth: _phoneWidth - 20,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            'https://portfolium1.cloudimg.io/s/crop/192x192/https://cdn.portfolium.com/ugcs3%2Favatar%2F9A1773AD-1F85-4322-2DC3-624E08F24D42-0-xKXrfFsi-JV-pl2eZkIOEQB7zWw3M92eZXsgd6k3jjoGjcY6V85pwuwDVB7.jpg',
                          ),
                        ),
                      ),
                      PopupMenuButton<MenuActions>(
                        icon: Icon(
                          FontAwesomeIcons.bars,
                          color: Colors.black87,
                        ),
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<MenuActions>>[
                          const PopupMenuItem(
                            child: Text('Projects'),
                            value: MenuActions.projects,
                          ),
                          const PopupMenuItem(
                            child: Text('Resume'),
                            value: MenuActions.resume,
                          ),
                          const PopupMenuItem(
                            child: Text('LinkedIn'),
                            value: MenuActions.linkedin,
                          ),
                        ],
                        onSelected: (MenuActions result) {
                          switch (result) {
                            case MenuActions.projects:
                              {
                                print(result);
                                // setState(() {
                                //   actionToPass = MenuActions.about;
                                // });
                              }
                              break;
                            case MenuActions.resume:
                              {
                                print(result);
                                // setState(() {
                                //   actionToPass = MenuActions.pool;
                                // });
                              }
                              break;
                            case MenuActions.linkedin:
                              {
                                print(result);
                                // setState(() {
                                //   actionToPass = MenuActions.guide;
                                // });
                              }
                              break;
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      // Row(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: <Widget>[
      //           ClipRRect(
      //             borderRadius: BorderRadius.circular(100),
      //             child: Image.network(
      //               'https://portfolium1.cloudimg.io/s/crop/192x192/https://cdn.portfolium.com/ugcs3%2Favatar%2F9A1773AD-1F85-4322-2DC3-624E08F24D42-0-xKXrfFsi-JV-pl2eZkIOEQB7zWw3M92eZXsgd6k3jjoGjcY6V85pwuwDVB7.jpg',
      //             ),
      //           ),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 'Travis Yatsko',
      //                 style: TextStyle(
      //                     color: Colors.white, fontWeight: FontWeight.bold),
      //               ),
      //               Text(
      //                 'Program Manager & Mobile Developer',
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ],
      //           )
      //         ],
      //       ),
      //     ),
      //     VerticalDivider(
      //       thickness: 4,
      //       color: Colors.white,
      //     )
      //   ],
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
