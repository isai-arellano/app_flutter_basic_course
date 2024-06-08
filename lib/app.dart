import 'package:app_flutter_basic_course/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class FlutterCourseBasicApp extends StatelessWidget {
  const FlutterCourseBasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomePage(),
    );
  }
}