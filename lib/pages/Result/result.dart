import 'package:flutter/material.dart';
import 'package:quiz/widgets/custom_appbar.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Result"),
    );
  }
}
