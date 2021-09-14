import 'package:flutter/material.dart';
import 'package:tyats_web/ui/phone_body/projects/project_stack.dart';
import 'package:tyats_web/utilities/expanded_setion.dart';
import 'dart:html' as html;
import 'package:tyats_web/utilities/responsive_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum ProjectName {
  Balou,
  BalouBids,
  Fyto,
}

class ProjectItem extends StatefulWidget {
  const ProjectItem({Key? key, required this.projectName}) : super(key: key);
  final ProjectName projectName;

  @override
  _ProjectItemState createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool _showExpanded = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.projectName) {
      case ProjectName.Balou:
        return _projectItem(
          context: context,
          project: ProjectName.Balou,
          name: 'Balou',
          imageName: 'balou_hero.jpg',
          websiteURL: 'https://www.balouapp.com',
          description:
              'Balou was developed to allow conference/trade show exhibitors to reach a broader audience at the event. The goal of Balou is to connect attendees with exhibitors through the exhibitors giveaways, contest, and promotions. We aimed to create a simple and clean interface while allowing exhibitors to display all of the information relevant to them. Balou is the first application I released and was initially written in Swift, later to by converted into Flutter and released on Android. Balou is designed for offline use and syncs data from our servers to an on-device data base.',
        );
        break;
      case ProjectName.BalouBids:
        return _projectItem(
          context: context,
          project: ProjectName.BalouBids,
          name: 'Balou Bids',
          imageName: 'bids_hero.png',
          websiteURL: 'https://www.balouapp.com',
          description:
              'Balou Bids builds off the work of the core Balou app to provide an elegant solution to silent auctions. Balou Bids handles the entire silent auction process including bidding and payment. The application is written in Flutter with custom packages built in Swift/Kotlin to allow for integration of Apple Sign in and Braintree payments. Balou Bids will be released initially on iOS and Android, later to be released as a webapp.',
        );
        break;
      case ProjectName.Fyto:
        return _projectItem(
          context: context,
          project: ProjectName.Fyto,
          name: 'Fytoborous',
          imageName: 'fyto_hero.png',
          websiteURL: 'https://fytoboros.com/#/',
          description:
              'Fytoborous is a new startup seeking to improve plant based meat products. The project is relying heavily on the Cardano Blockchain to improve business operations as well as raise capital. For Fytoborous, I have setup a Cardano Stake Pool to generate passive income for the project as well as working on an NFT minting service utilizing the Cardano Block Chain. The Fytoborous website is written in Flutter and is my first venture into using Flutter for a website.',
        );
        break;
    }
  }

  Widget _projectItem({
    required BuildContext context,
    required ProjectName project,
    required String name,
    required String imageName,
    required String websiteURL,
    required String description,
  }) {
    return Column(
      children: [
        Container(
          height: 180,
          color: Colors.white10,
          child: Row(
            children: [
              SizedBox(
                height: 125,
                width: 125,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    imageName,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () => html.window.open(websiteURL, 'new tab'),
                    icon: Icon(
                      FontAwesomeIcons.globeAmericas,
                      size: 20,
                    ),
                    label: Text('Website'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //ProjectStack(project: _project),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print(_showExpanded);
                        _showExpanded = !_showExpanded;
                        print(_showExpanded);
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    child: Text('More'),
                  ),
                ],
              ),
            ],
          ),
        ),
        ExpandedSection(
          child: Text(description),
          expand: _showExpanded,
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
