import 'package:flutter/material.dart';

import '../textstyle.dart';
import 'circle.dart';

const double _SMALLTEXTFONTSIZE = 16;

class SmallCircleWithCaption extends StatefulWidget {
  final double number;
  final String unit;
  final String caption;
  final EdgeInsets padding;

  SmallCircleWithCaption(this.number,
      {this.unit, this.caption, this.padding = const EdgeInsets.all(0)});

  @override
  _SmallCircleWithCaptionState createState() => _SmallCircleWithCaptionState();
}

class _SmallCircleWithCaptionState extends State<SmallCircleWithCaption> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: widget.padding,
        child: Column(
          children: <Widget>[
            SmallCircle(number: widget.number, unit: widget.unit),
            Padding(
                padding: EdgeInsets.only(top: 5), //TODO: Padding relativieren
                child: Text(widget.caption,
                    style: GoZeroTextStyles.regular(_SMALLTEXTFONTSIZE)))
          ],
        ));
  }
}
