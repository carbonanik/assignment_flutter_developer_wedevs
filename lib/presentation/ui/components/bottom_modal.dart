import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/app_svg_icon.dart';
import '../../../core/colors.dart';
import '../../provider/product_provider.dart';

enum BottomModalOption {
  newest,
  oldest,
  priceLowToHigh,
  priceHighToLow,
  bestSelling,
}

String bottomModalOptionToTitle(BottomModalOption option) {
  switch (option) {
    case BottomModalOption.newest:
      return "Newest";
    case BottomModalOption.oldest:
      return "Oldest";
    case BottomModalOption.priceLowToHigh:
      return "Price Low > High";
    case BottomModalOption.priceHighToLow:
      return "Price High > Low";
    case BottomModalOption.bestSelling:
      return "Best selling";
  }
}

productFilterBottomModal({
  required BuildContext context,
}) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Consumer(builder: (context, ref, child) {
        final selectedFilter = ref.watch(selectedFilterProvider);
        return Container(
          height: 300,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                      color: primaryColor.withOpacity(.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Filter",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 18),
                ...BottomModalOption.values.map(
                  (e) => _filterOption(
                    onTap: () {
                      ref.read(selectedFilterProvider.notifier).state = e;
                      Navigator.pop(context);
                    },
                    title: bottomModalOptionToTitle(e),
                    checked: e == selectedFilter,
                  ),
                ),
              ],
            ),
          ),
        );
      });
    },
  );
}

Widget _filterOption({
  required String title,
  required bool checked,
  required Function() onTap,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: InkWell(
      onTap: onTap,
      child: Row(
        children: [
          AppSvgIcon(
            checked ? SvgIcons.check : SvgIcons.emptyCheck,
            useColor: false,
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}
