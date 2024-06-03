import 'package:assignment_flutter_developer_wedevs/pages/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/colors.dart';
import '../core/gen/assets.gen.dart';
import '../provider/product_provider.dart';

final placeholderImages = [
  Assets.images.placeholder1.path,
  Assets.images.placeholder2.path,
  Assets.images.placeholder3.path,
  Assets.images.placeholder4.path,
];

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              _buildTitleBar(),
              const SizedBox(height: 20),
              Material(
                elevation: 6.0,
                shadowColor: shadowOneColor,
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [],
                  ),
                ),
              ),
              Expanded(
                child: Consumer(
                  builder: (context, ref, child) {
                    final productList = ref.watch(productListProvider);
                    return GridView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      itemCount: productList.value?.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: .55,
                      ),
                      itemBuilder: (context, index) {
                        final product = productList.value![index];
                        return ProductCard(
                          product: product,
                          placeholder: placeholderImages[
                              index % placeholderImages.length],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
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
