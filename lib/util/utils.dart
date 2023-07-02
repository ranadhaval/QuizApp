import 'package:flutter/material.dart';

mixin Utils {
  static boxShadow(Color shadowColor) {
    BoxShadow(
        color: shadowColor.withOpacity(0.08),
        blurRadius: 0,
        spreadRadius: 0,
        offset: const Offset(0, 4));
  }
}
