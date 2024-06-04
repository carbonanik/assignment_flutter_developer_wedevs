import 'package:assignment_flutter_developer_wedevs/core/app_svg_icon.dart';
import 'package:assignment_flutter_developer_wedevs/core/colors.dart';
import 'package:flutter/material.dart';


class AppBottomBar extends StatelessWidget {
  final int? index;
  final Function(int index) onTap;

  const AppBottomBar({
    super.key,
    this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      surfaceTintColor: Colors.white,
      shadowColor: Colors.black.withOpacity(.3),
      elevation: 20,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => onTap(0),
            icon: AppSvgIcon(
              SvgIcons.home,
              color: index == 0 ? primaryColor : null,
            ),
          ),
          IconButton(
            onPressed: () => onTap(1),
            icon: AppSvgIcon(
              SvgIcons.window,
              color: index == 1 ? primaryColor : null,
            ),
          ),
          const SizedBox(width: 30),
          IconButton(
            onPressed: () => onTap(2),
            icon: AppSvgIcon(
              SvgIcons.cart,
              color: index == 2 ? primaryColor : null,
            ),
          ),
          IconButton(
            onPressed: () => onTap(3),
            icon: AppSvgIcon(
              SvgIcons.person,
              color: index == 3 ? primaryColor : null,
            ),
          ),
        ],
      ),
    );
  }
}
