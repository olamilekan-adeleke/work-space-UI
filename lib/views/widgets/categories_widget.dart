import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../components/custom_text_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget(
          "Categories",
          size: 18.sp,
          fontWeight: FontWeight.w700,
          color: const Color(0xff323B4B),
        ),
        SizedBox(height: 10.sp),
        SizedBox(
          height: 46.sp,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: const <Widget>[
              CategoriesItemWidget(
                image: "asset/people.svg",
                title: "co-space",
              ),
              CategoriesItemWidget(
                image: "asset/locate.svg",
                title: "Cafe",
                color: Color(0xffFDF4E0),
              ),
              CategoriesItemWidget(
                image: "asset/people.svg",
                title: "Library",
              ),
              CategoriesItemWidget(
                image: "asset/people.svg",
                title: "Book Shop",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoriesItemWidget extends StatelessWidget {
  const CategoriesItemWidget({
    Key? key,
    required this.image,
    required this.title,
    this.color,
  }) : super(key: key);

  final String image;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.sp),
      margin: EdgeInsets.only(right: 10.sp),
      height: 44.sp,
      decoration: BoxDecoration(
        color: color ?? const Color(0xffE5F6EF),
        borderRadius: BorderRadius.circular(35.sp),
      ),
      child: Row(
        children: [
          SvgPicture.asset(image),
          SizedBox(width: 5.sp),
          textWidget(
            title,
            size: 12.sp,
            fontWeight: FontWeight.w300,
          ),
        ],
      ),
    );
  }
}
