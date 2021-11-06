import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:work_space_ui/components/color.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      unselectedItemColor: kcTextColor,
      selectedItemColor: Theme.of(context).primaryColor,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'asset/home.svg',
            color: Theme.of(context).primaryColor,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'asset/heart.svg',
            color: kcTextColor,
          ),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'asset/profile.svg',
            color: kcTextColor,
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'asset/add.svg',
            color: kcTextColor,
          ),
          label: 'Add',
        )
      ],
    );
  }
}
