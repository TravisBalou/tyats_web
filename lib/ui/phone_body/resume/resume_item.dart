import 'package:flutter/material.dart';
import 'package:tyats_web/utilities/expanded_setion.dart';

enum ResumeEntry {
  humetrix,
  balou,
  vanScoyoc,
  susanDavis,
}

class ResumeItem extends StatefulWidget {
  const ResumeItem({Key? key, required this.resumeEntry}) : super(key: key);

  final ResumeEntry resumeEntry;

  @override
  _ResumeItemState createState() => _ResumeItemState();
}

class _ResumeItemState extends State<ResumeItem> {
  bool _showExpanded = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.resumeEntry) {
      case ResumeEntry.humetrix:
        return buildResumeItem(
          context: context,
          company: 'Humetrix',
          logoName: 'TODO',
          title: 'Program Manager',
          startDate: 'April 2015',
          endDate: 'July 2021',
          details: 'TODO',
          webURL: 'TODO',
        );
        break;
      case ResumeEntry.balou:
        return buildResumeItem(
          context: context,
          company: 'Balou',
          logoName: 'TODO',
          title: 'Co-Founder, COO',
          startDate: 'May 2018',
          endDate: 'Present',
          details: 'TODO',
          webURL: 'TODO',
        );
        break;
      case ResumeEntry.vanScoyoc:
        return buildResumeItem(
          context: context,
          company: 'Van Scoyoc Associates',
          logoName: 'TODO',
          title: 'Intern',
          startDate: 'June 2012',
          endDate: 'August 2012',
          details: 'TODO',
          webURL: 'TODO',
        );
        break;
      case ResumeEntry.susanDavis:
        return buildResumeItem(
          context: context,
          company: 'U.S Congresswoman Susan Davis',
          logoName: 'TODO',
          title: 'Congressional Intern',
          startDate: 'January 2012',
          endDate: 'June 2012',
          details: 'TODO',
          webURL: 'TODO',
        );
        break;
    }
  }

  Widget buildResumeItem({
    required BuildContext context,
    required String company,
    required String logoName,
    required String title,
    required String startDate,
    required String endDate,
    required String details,
    required String webURL,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  'headshot.jpeg',
                )),
            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  company,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  title,
                ),
                Text(
                  startDate + ' - ' + endDate,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _showExpanded = !_showExpanded;
            });
          },
          child: Text(
            _showExpanded ? 'Collapse' : 'Details',
          ),
        ),
        ExpandedSection(
          expand: _showExpanded,
          child: Column(
            children: [
              Text(
                details,
              ),
            ],
          ),
        ),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
