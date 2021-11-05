import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'views/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (_, __, ___) {
      return MaterialApp(
        title: 'Work-Space UI',
        theme: ThemeData(primaryColor: const Color(0xffFFAB00)),
        home: const HomeScreen(),
      );
    });
  }
}
