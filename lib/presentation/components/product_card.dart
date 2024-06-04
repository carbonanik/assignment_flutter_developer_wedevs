import 'package:assignment_flutter_developer_wedevs/model/product_list_response.dart'
    show Product;
import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/gen/assets.gen.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final String placeholder;

  const ProductCard({
    required this.placeholder,
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      shadowColor: shadowTwoColor,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            placeholder,
            height: 170,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.grey.shade100,
                height: 170,
                child: const Center(
                  child: Icon(
                    Icons.image,
                    size: 100,
                    color: Colors.grey,
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 48,
                  child: Text(
                    product.name ?? '',
                    style: const TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.bold
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$${product.price}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 2,
                        decorationColor: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '\$${product.price}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Icon(
                        Icons.star,
                        color: (product.ratingCount ?? 0) >= i
                            ? Colors.amber
                            : Colors.grey,
                        size: 16,
                      ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
