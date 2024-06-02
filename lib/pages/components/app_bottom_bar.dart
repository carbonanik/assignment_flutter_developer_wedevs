import 'package:flutter/material.dart';

import '../../core/app_svg_icon.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
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
            onPressed: () {},
            icon: const AppSvgIcon(SvgIcons.home),
          ),
          IconButton(
            onPressed: () {},
            icon: const AppSvgIcon(SvgIcons.window),
          ),
          const SizedBox(width: 30),
          IconButton(
            onPressed: () {},
            icon: const AppSvgIcon(SvgIcons.cart),
          ),
          IconButton(
            onPressed: () {},
            icon: const AppSvgIcon(SvgIcons.person),
          ),
        ],
      ),
    );
  }
}
