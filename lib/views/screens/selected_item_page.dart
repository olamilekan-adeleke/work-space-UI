import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SelectedItemScreen extends StatelessWidget {
  const SelectedItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.sp),
          ],
        ),
      ),
    );
  }
}
