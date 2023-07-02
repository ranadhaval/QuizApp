import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/theme/app_theme.dart';
import 'package:quiz/util/constants.dart';

class CustomText extends StatefulWidget {
  String title;
  String fontfamily;
  double fontSize;
  Color color;
  double height;
  FontWeight fontWight;

  CustomText(
      {this.color = Colors.black,
      this.fontSize = Constant.midiumn,
      this.fontWight = AppTheme.fontWeight,
      this.fontfamily = AppTheme.appFontName,
      this.height = 1.5,
      required this.title});

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Constant.customTextPadding),
      child: Text(
        widget.title,
        style: TextStyle(
            height: widget.height,
            color: widget.color,
            fontFamily: widget.fontfamily,
            fontWeight: widget.fontWight,
            fontSize: widget.fontSize),
      ),
    );
  }
}
