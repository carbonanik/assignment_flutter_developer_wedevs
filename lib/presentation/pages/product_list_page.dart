import 'package:assignment_flutter_developer_wedevs/core/app_svg_icon.dart';
import 'package:assignment_flutter_developer_wedevs/presentation/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/colors.dart';
import '../../core/gen/assets.gen.dart';
import '../../provider/product_provider.dart';
import '../components/bottom_modal.dart';

final placeholderImages = [
  Assets.images.placeholder1.path,
  Assets.images.placeholder2.path,
  Assets.images.placeholder3.path,
  Assets.images.placeholder4.path,
];

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20, width: double.infinity),
              _buildTitleBar(),
              const SizedBox(height: 20),
              _buildFilterBar(),
              _buildProductGrid(),
            ],
          ),
        ),
      ),
    );
  }

  Material _buildFilterBar() {
    return Material(
      elevation: 6.0,
      shadowColor: shadowOneColor,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () {
          productFilterBottomModal(context: context);
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
          child: Row(
            children: [
              const SizedBox(width: 20),
              AppSvgIcon(
                SvgIcons.filter,
                size: 20,
                color: Colors.grey.shade400,
              ),
              const SizedBox(width: 20),
              Consumer(
                builder: (context, ref, child) {
                  final selectedFilter = ref.watch(selectedFilterProvider);

                  return Expanded(
                    child: Text(
                      selectedFilter != null
                          ? bottomModalOptionToTitle(selectedFilter)
                          : 'Filter',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(width: 20),
              Text(
                'Sort By',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey.shade400,
              ),
              const SizedBox(width: 10),
              AppSvgIcon(
                SvgIcons.filter,
                size: 20,
                color: Colors.grey.shade400,
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _buildProductGrid() {
    return Expanded(
      child: Consumer(
        builder: (context, ref, child) {
          final productList = ref.watch(productListWithFilterProvider);
          return GridView.builder(
            padding: const EdgeInsets.symmetric(vertical: 12),
            itemCount: productList.value?.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: .57,
            ),
            itemBuilder: (context, index) {
              final product = productList.value![index];
              return ProductCard(
                product: product,
                placeholder: placeholderImages[
                    (product.id ?? 1) % placeholderImages.length],
              );
            },
          );
        },
      ),
    );
  }

  Row _buildTitleBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Opacity(
          opacity: 0,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ),
        const Text(
          'Product List',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, size: 32),
        ),
      ],
    );
  }
}
