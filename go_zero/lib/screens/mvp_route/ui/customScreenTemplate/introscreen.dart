import 'package:flutter/material.dart';
import 'package:go_zero/screens/mvp_route/ui/textstyle.dart';

import '../screensize.dart';
import '../widgets/progressbar.dart';
import '../widgets/circle.dart';
import '../widgets/pressAnywhereLabel.dart';
import '../colors.dart';

const double _STEPFONTSIZE = 17;
const double _CTAFONTSIZE = 24;

Scaffold introscreen(BuildContext context, int stepNum, String imagepath,
    String title, int index, String nextScreen) {
  return Scaffold(
      body: GestureDetector(
    onTap: () => Navigator.pushNamed(context, nextScreen),
    child: Stack(
      children: <Widget>[
        Container(color: GoZeroColors.background),
        Align(
          alignment: Alignment.topLeft,
          child: progressbar(index, context),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Padding(
                  padding:
                      EdgeInsets.only(top: 0.217 * getScreenHeight(context)),
                  child: bigCircle(child: Image.asset(imagepath)))
            ],
          ),
        ),
        Positioned(
          bottom: 0.2834 * getScreenHeight(context),
          left: 0.084 * getScreenWidth(context),
          child: RichText(
            text: TextSpan(
                style: GoZeroTextStyles.regular(_STEPFONTSIZE),
                children: <TextSpan>[
                  TextSpan(
                    style: GoZeroTextStyles.regular(_STEPFONTSIZE,
                        color: GoZeroColors.green),
                    text: "#",
                  ),
                  TextSpan(text: " STEP " + stepNum.toString())
                ]),
          ),
        ),
        Positioned(
          bottom: 0.1724 * getScreenHeight(context),
          left: 0.084 * getScreenWidth(context),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: GoZeroTextStyles.semibold(_CTAFONTSIZE), text: title),
          ),
        ),
        pressAnywhere(context)
      ],
    ),
  ));
}