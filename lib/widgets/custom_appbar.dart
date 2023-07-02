import 'package:flutter/material.dart';
import 'package:quiz/theme/app_theme.dart';
import 'package:quiz/util/constants.dart';
import 'package:quiz/widgets/custom_text.dart';

AppBar appBar({required String title, Widget? leadingWidget}) => AppBar(
      leading: leadingWidget,
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: CustomText(
        title: title,
        fontSize: Constant.appbarFontSize,
      ),
      backgroundColor: AppTheme.colorPrimaryTheme,
    );
