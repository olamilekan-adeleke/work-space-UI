import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:work_space_ui/components/color.dart';
import 'package:work_space_ui/components/custom_text_widget.dart';
import 'package:work_space_ui/models/space_model.dart';

class NearBySpaceWidget extends StatelessWidget {
  const NearBySpaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textWidget(
              "Nearest space",
              size: 18.sp,
              fontWeight: FontWeight.w700,
            ),
            textWidget(
              "See all",
              size: 12.sp,
              fontWeight: FontWeight.w600,
            )
          ],
        ),
        SizedBox(height: 15.sp),
        const ItemList(),
      ],
    );
  }
}

class ItemList extends StatefulWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<Offset> animation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..forward();

    animation = Tween<Offset>(
      begin: const Offset(0.0, 1),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: nearBySpaceList.length,
        itemBuilder: (_, int index) {
          final SpaceModel space = nearBySpaceList[index];

          return Container(
            height: 200.sp,
            padding: EdgeInsets.all(8.sp),
            margin: EdgeInsets.only(bottom: 10.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              color: Colors.white,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.sp),
                  child: Image.asset(
                    space.image,
                    height: 124.sp,
                    width: 311.sp,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10.sp),
                Row(
                  children: [
                    textWidget(
                      space.name,
                      size: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.star,
                      size: 12.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(width: 5.sp),
                    textWidget(
                      space.rating.toString(),
                      size: 12.sp,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'asset/wifi.svg',
                          color: kcTextColor,
                        ),
                        SizedBox(width: 5.sp),
                        textWidget(
                          'Wifi',
                          size: 12.sp,
                          fontWeight: FontWeight.w300,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'asset/coffe.svg',
                          color: kcTextColor,
                        ),
                        SizedBox(width: 5.sp),
                        textWidget(
                          'Coffee',
                          size: 12.sp,
                          fontWeight: FontWeight.w300,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'asset/coffe.svg',
                          color: kcTextColor,
                        ),
                        SizedBox(width: 5.sp),
                        textWidget(
                          'Meeting Room',
                          size: 12.sp,
                          fontWeight: FontWeight.w300,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
