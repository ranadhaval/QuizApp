// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:quiz/theme/app_theme.dart';
import 'package:quiz/util/_string.dart';
import 'package:quiz/util/constants.dart';
import 'package:get/get.dart';

class errorDialoge extends StatefulWidget {
  Color backgroundColor;
  double contentPadding;
  double titlePadding;

  String error;
  Color buttonForegroundColor;
  Color buttonbackgroundColor;
  errorDialoge(
      {super.key,
      this.backgroundColor = AppTheme.colorWhite,
      this.buttonForegroundColor = AppTheme.colorBlack54,
      this.buttonbackgroundColor = AppTheme.colorBlue,
      this.contentPadding = Constant.errordialogContentPadding,
      required this.error,
      this.titlePadding = Constant.errordialogTitlePadding});

  @override
  State<errorDialoge> createState() => _errorDialogeState();
}

class _errorDialogeState extends State<errorDialoge> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: widget.backgroundColor,
      contentPadding: EdgeInsets.zero,
      content: Container(
        padding: EdgeInsets.all(widget.contentPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: widget.titlePadding, bottom: widget.titlePadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    Strings.error,
                    style: TextStyle(color: AppTheme.colorRed),
                  ),
                ],
              ),
            ),
            Center(child: Text(widget.error)),
            TextButton(
              onPressed: () {
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: widget.buttonForegroundColor,
                  backgroundColor: widget.buttonbackgroundColor),
              child: const Text(
                Strings.ok,
                style: TextStyle(color: AppTheme.colorWhite),
              ),
            )
          ],
        ),
      ),
    );
  }
}
