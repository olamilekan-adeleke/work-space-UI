import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:work_space_ui/components/color.dart';
import 'package:work_space_ui/components/custom_text_widget.dart';
import 'package:work_space_ui/models/space_model.dart';

class SelectedItemScreen extends StatelessWidget {
  const SelectedItemScreen(this.space, {Key? key}) : super(key: key);

  final SpaceModel space;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.sp),
            const Header(),
            SizedBox(height: 20.sp),
            SizedBox(
              height: 160.sp,
              child: Hero(
                tag: space.image,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.sp),
                  child: Image.asset(
                    space.image,
                    height: 160.sp,
                    width: 326.sp,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.sp),
            Body(space: space),
          ],
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key? key,
    required this.space,
  }) : super(key: key);

  final SpaceModel space;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..forward();

    animation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeIn,
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              textWidget(
                widget.space.name,
                size: 16.sp,
                fontWeight: FontWeight.w700,
              ),
              const Spacer(),
              Icon(
                Icons.star,
                size: 15.sp,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(width: 10.sp),
              textWidget(
                widget.space.rating.toString(),
                size: 15.sp,
                fontWeight: FontWeight.w600,
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset('asset/location.svg'),
              SizedBox(width: 5.sp),
              textWidget(
                widget.space.location,
                size: 12.sp,
                fontWeight: FontWeight.w300,
              ),
            ],
          ),
          SizedBox(height: 10.sp),
          textWidget(
            "\$${widget.space.pricePerHour} / Per hour",
            size: 14.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xff38CB89),
          ),
          SizedBox(height: 30.sp),
          textWidget(
            "Space details",
            size: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 5.sp),
          textWidget(
            widget.space.description,
            size: 12.sp,
            fontWeight: FontWeight.w300,
          ),
          SizedBox(height: 30.sp),
          textWidget(
            "Availability",
            size: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 5.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10.sp),
                height: 52.sp,
                width: 84.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "asset/calendar.svg",
                      height: 15.sp,
                      width: 15.sp,
                    ),
                    SizedBox(width: 8.sp),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textWidget(
                          "Date",
                          size: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        textWidget(
                          "Dec 24",
                          size: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.sp),
                height: 52.sp,
                width: 84.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "asset/clock.svg",
                      height: 15.sp,
                      width: 15.sp,
                    ),
                    SizedBox(width: 8.sp),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textWidget(
                          "Time",
                          size: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        textWidget(
                          "9 am",
                          size: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.sp),
                height: 52.sp,
                width: 84.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "asset/alarm.svg",
                      height: 15.sp,
                      width: 15.sp,
                    ),
                    SizedBox(width: 8.sp),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textWidget(
                          "Duration",
                          size: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        textWidget(
                          "6 hours",
                          size: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20.sp),
          Align(
            child: Container(
              height: 45.sp,
              width: 200.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.sp),
                color: Theme.of(context).primaryColor,
              ),
              child: Center(
                child: textWidget(
                  "Book Space",
                  size: 14.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: kcTextColor,
            size: 15.sp,
          ),
        ),
        textWidget(
          "Space details",
          size: 14.sp,
          fontWeight: FontWeight.w700,
        ),
        SvgPicture.asset('asset/upload.svg'),
      ],
    );
  }
}
