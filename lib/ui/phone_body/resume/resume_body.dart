import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:tyats_web/models/dart/ui_models.dart';
import 'package:tyats_web/ui/phone_body/resume/resume_list_builder.dart';
import 'package:tyats_web/utilities/responsive_widget.dart';

class ResumeBody extends StatefulWidget {
  const ResumeBody({Key? key}) : super(key: key);

  @override
  _ResumeBodyState createState() => _ResumeBodyState();
}

class _ResumeBodyState extends State<ResumeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Resume',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        ResponsiveWidget.isSmallScreen(context)
            ? ResumeListBuilder(
                height: MediaQuery.of(context).size.height * 0.86,
                width: MediaQuery.of(context).size.width)
            : Consumer<PhoneSize>(
                builder: (BuildContext context, PhoneSize phoneSize, child) {
                print(phoneSize.height.toString());
                return ResumeListBuilder(
                  width: phoneSize.width,
                  height: phoneSize.height * 0.78,
                );
              }),
      ],
    );
  }
}
