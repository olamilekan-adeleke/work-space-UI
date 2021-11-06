import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../components/custom_text_widget.dart';

class HomeHeaderWidget extends StatefulWidget {
  const HomeHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeHeaderWidget> createState() => _HomeHeaderWidgetState();
}

class _HomeHeaderWidgetState extends State<HomeHeaderWidget>
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              textWidget(
                "Welcome back, ",
                size: 18.sp,
                fontWeight: FontWeight.w400,
              ),
              textWidget(
                "Joshua!",
                size: 18.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xffFFAB00),
              ),
              const Spacer(),
              SizedBox(
                height: 15.sp,
                width: 15.sp,
                child: SvgPicture.asset('asset/notification_bell.svg'),
              ),
            ],
          ),
          SizedBox(height: 5.sp),
          textWidget(
            "Where do you want to work today?",
            size: 12.sp,
            fontWeight: FontWeight.w300,
          ),
        ],
      ),
    );
  }
}
