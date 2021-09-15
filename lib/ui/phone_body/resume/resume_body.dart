import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyats_web/models/dart/ui_models.dart';
import 'package:tyats_web/ui/phone_body/resume/resume_item.dart';

class ResumeBody extends StatefulWidget {
  const ResumeBody({Key? key}) : super(key: key);

  @override
  _ResumeBodyState createState() => _ResumeBodyState();
}

class _ResumeBodyState extends State<ResumeBody> {
  @override
  Widget build(BuildContext context) {
    //PhoneSize phoneSize = context.watch<PhoneSize>();
    //print(phoneSize.height.toString());
    return Column(
      //mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Resume',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Consumer<PhoneSize>(
            builder: (BuildContext context, PhoneSize phoneSize, child) {
          print(phoneSize.height.toString());
          return Container(
            height: phoneSize.height * 0.78,
            width: phoneSize.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResumeItem(
                    resumeEntry: ResumeEntry.humetrix,
                  ),
                  ResumeItem(
                    resumeEntry: ResumeEntry.balou,
                  ),
                  ResumeItem(
                    resumeEntry: ResumeEntry.vanScoyoc,
                  ),
                  ResumeItem(
                    resumeEntry: ResumeEntry.susanDavis,
                  ),
                ],
              ),
            ),
          );
        })
      ],
    );
  }
}
