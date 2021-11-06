import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../components/custom_text_widget.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..forward();

    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.sp),
              height: 48.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.sp),
                color: const Color(0xffFAFBFC),
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.search, size: 14.sp),
                  SizedBox(width: 10.sp),
                  textWidget(
                    "Search cafe, room etc",
                    size: 9.sp,
                    fontWeight: FontWeight.w200,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20.sp),
          SvgPicture.asset(
            'asset/search_filter.svg',
            height: 48.sp,
            width: 52.sp,
          ),
        ],
      ),
    );
  }
}
