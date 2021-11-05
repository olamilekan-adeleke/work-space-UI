import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/home_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30.sp),
            const HomeHeaderWidget(),
          ],
        ),
      ),
    );
  }
}
