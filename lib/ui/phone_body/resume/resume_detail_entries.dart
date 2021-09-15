import 'package:flutter/material.dart';
import 'package:tyats_web/ui/phone_body/resume/resume_item.dart';

class ResumeEntries extends StatelessWidget {
  const ResumeEntries({Key? key, required this.resumeEntry}) : super(key: key);

  final ResumeEntry resumeEntry;
  @override
  Widget build(BuildContext context) {
    switch (resumeEntry) {
      case ResumeEntry.humetrix:
        return Column(
          children: [
            Text(
                'Served as Program/Product Manager for Humetrix, a developer of consumer facing Health IT solutions. Leads business and development teams delivering healthcare technologies to market utilizing Agile Methodologies.'),
            bulletEntry(
              context,
              'Programmatic and technical lead for Humetrix’s work on Project Salus, a U.S. Department of Defense led research study to track and predict the Covid-19 pandemic.',
            ),
            bulletEntry(
              context,
              'Conducts data analysis using SQL queries and data visualization techniques to provide direction for predictive AI/ML modeling.',
            ),
            bulletEntry(
              context,
              'Designs and develops Covid-19 focused geospatial data dashboards for presentation before The White House, HHS, CDC, NORTHCOM, FEMA and the National Guard Bureau.',
            ),
            bulletEntry(
              context,
              'Manages third-party integrations including the Department of Veteran Affairs Health API and Center for Medicare and Medicare Services Blue Button 2.0 API.',
            ),
            bulletEntry(
              context,
              'Plans and monitors communication with external and internal stakeholders ensuring timely and efficient dissemination of information.',
            ),
            bulletEntry(
              context,
              'Monitors public policy for healthcare technology and consumer data privacy. Develops and implements quality management plans and risk assessments ensuring product compliance with requirements and legal regulations.',
            ),
            bulletEntry(
              context,
              'Responsible for Humetrix’s participation in the National Health Service (NHS) Test Bed Program and served as project manager delivering a white labeled application while ensuring compliance with GDPR.',
            ),
          ],
        );
      case ResumeEntry.balou:
        return Text(
            'Serves as COO for Balou, a marketing platform designed to drive attendee engagement at conferences and tradeshows. Balou’s SaaS platforms are offered as stand-alone products or integrating to existing show management solutions. Leads the platform’s design and architecture. Developed the Balou iOS app and Android app.');
      case ResumeEntry.vanScoyoc:
        return Text(
            'Assisted the Defense Group of this government affairs firm by submitting research and analysis of industry opportunities. Responsible for new client research and initial introductions.');
      case ResumeEntry.susanDavis:
        return Text(
            'Responsibilities included answering constituent’s calls and directing matters to appropriate parties for responses, distributing information to the public, and performing other tasks that were assigned.');
    }
  }

  Widget bulletEntry(BuildContext context, String lineEntry) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(3),
          child: Icon(
            Icons.circle,
            size: 10,
          ),
        ),
        SizedBox(
          width: 3,
        ),
        Expanded(
          child: Text(lineEntry),
        ),
      ],
    );
  }
}
