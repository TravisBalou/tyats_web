import 'package:flutter/material.dart';
import 'package:tyats_web/ui/phone_body/resume/resume_item.dart';

class ResumeListBuilder extends StatefulWidget {
  const ResumeListBuilder({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  final double height;
  final double width;

  @override
  _ResumeListBuilderState createState() => _ResumeListBuilderState();
}

class _ResumeListBuilderState extends State<ResumeListBuilder> {
  @override
  Widget build(BuildContext context) {
    List<ResumeEntry> entries = [
      ResumeEntry.humetrix,
      ResumeEntry.balou,
      ResumeEntry.vanScoyoc,
      ResumeEntry.susanDavis,
    ];
    return Container(
      height: widget.height,
      width: widget.width,
      child: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (context, index) {
            return ResumeItem(resumeEntry: entries[index]);
          }),
    );
  }
}
