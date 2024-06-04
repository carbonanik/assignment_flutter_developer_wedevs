import 'package:assignment_flutter_developer_wedevs/backend/local/read_products.dart';
import 'package:assignment_flutter_developer_wedevs/model/product_list_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../presentation/components/bottom_modal.dart';

part 'product_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Product>> productList(ProductListRef ref) async {
  return await readProducts();
}

final selectedFilterProvider = StateProvider<BottomModalOption?>((ref) {
  return null;
});

@riverpod
Future<List<Product>> productListWithFilter(
  ProductListWithFilterRef ref,
) async {
  final selectedFilter = ref.watch(selectedFilterProvider);
  final productList = ref.watch(productListProvider);
  if (selectedFilter == null) {
    return productList.value ?? [];
  }

  //
  switch (selectedFilter) {
    case BottomModalOption.newest:
      return productList.value ?? [];

    //
    case BottomModalOption.oldest:
      return productList.value?.reversed.toList() ?? [];

    //
    case BottomModalOption.priceLowToHigh:
      final sortedList = productList.value?.toList() ?? [];
      sortedList.sort(
        (a, b) => (double.parse(a.price ?? '0'))
            .compareTo(double.parse(b.price ?? '0')),
      );
      return sortedList;

    //
    case BottomModalOption.priceHighToLow:
      final sortedList = productList.value?.toList() ?? [];
      sortedList.sort(
        (a, b) => (double.parse(b.price ?? '0'))
            .compareTo(double.parse(a.price ?? '0')),
      );
      return sortedList;

    //
    case BottomModalOption.bestSelling:
      return productList.value ?? [];
  }
}
