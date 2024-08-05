import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Corrected import

import '../Resources/resource.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      backgroundColor: Resource.colors.whiteColor,
      selectedItemColor: Resource.colors.mainColor,
      unselectedItemColor: Resource.colors.mainColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/svgs/Home2.svg",
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/svgs/Questions.svg",
          ),
          label: 'FAQ’s',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/svgs/7 Key.svg",
          ),
          label: '24/7',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/svgs/Automatic.svg",
          ),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/svgs/Customer.svg",
          ),
          label: 'Account',
        ),
      ],
    );
  }
}
