import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/app_svg_icon.dart';
import '../../core/colors.dart';
import '../../provider/product_provider.dart';

class AppFloatingActionButton extends StatelessWidget {
  const AppFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: gradientOne,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(2, 10),
            blurRadius: 10,
          ),
        ],
      ),
      child: Consumer(builder: (context, ref, child) {
        return InkWell(
          onTap: () {
            ref.read(showSearchFieldProvider.notifier).state =
                !ref.read(showSearchFieldProvider);
          },
          child: const Center(
            child: AppSvgIcon(
              SvgIcons.search,
              size: 20,
              color: Colors.white,
            ),
          ),
        );
      }),
    );
  }
}
