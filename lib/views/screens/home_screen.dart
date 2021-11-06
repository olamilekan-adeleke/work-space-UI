import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:work_space_ui/views/widgets/botton_nav_bar_widget.dart';
import 'package:work_space_ui/views/widgets/nearby_space_widget.dart';

import '../widgets/categories_widget.dart';
import '../widgets/home_header_widget.dart';
import '../widgets/search_bar.dart';

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
            SizedBox(height: 20.sp),
            const SearchBarWidget(),
            SizedBox(height: 30.sp),
            const CategoriesWidget(),
            SizedBox(height: 30.sp),
            const NearBySpaceWidget(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
