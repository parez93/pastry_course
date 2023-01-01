import 'package:flutter/material.dart';
import 'package:pastry_course/home.dart';
import 'package:pastry_course/theme.dart';

void main() {
  runApp(const PastryCourseApp());
}

class PastryCourseApp extends StatelessWidget {
  const PastryCourseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = PastryCourseTheme.dark();
    return MaterialApp(
      title: "PastryCourse",
      theme: theme,
      home: Home(),
    );
  }
}
