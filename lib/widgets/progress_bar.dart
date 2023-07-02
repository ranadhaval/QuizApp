
import 'package:flutter/material.dart';

import 'package:quiz/theme/app_theme.dart';
import 'package:quiz/util/constants.dart';

class ProgressBar extends StatelessWidget {
  final double height;
  final double width;
  final bool isLoader;

  const ProgressBar({
    Key? key,
    this.height = double.infinity,
    this.width = double.infinity,
    required this.isLoader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoader) {
      return Container(
        height: height,
        width: width,
        color: Colors.black45,
        child: Center(
          child: Card(
            color: AppTheme.colorWhite,
            elevation: Constant.cardElevation,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(Constant.buttonRoundedCorener)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(Constant.extraLargePadding * 2),
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                valueColor: AlwaysStoppedAnimation<Color>(AppTheme.colorProgress),
                backgroundColor: AppTheme.colorProgressBg,
              ),
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
