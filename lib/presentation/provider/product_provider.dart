import 'package:assignment_flutter_developer_wedevs/data/local/read_products.dart';
import 'package:assignment_flutter_developer_wedevs/model/product_list_response.dart';
import 'package:assignment_flutter_developer_wedevs/presentation/ui/components/bottom_modal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'product_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Product>> productList(ProductListRef ref) async {
  return await readProducts();
}

final selectedFilterProvider = StateProvider<BottomModalOption?>((ref) {
  return null;
});

final showSearchFieldProvider = StateProvider<bool>((ref) {
  return false;
});

final searchTextProvider = StateProvider<String>((ref) {
  return '';
});

@riverpod
Future<List<Product>> productListWithFilterSearch(
  ProductListWithFilterSearchRef ref,
) async {
  final selectedFilter = ref.watch(selectedFilterProvider);
  final productList = ref.watch(productListProvider);
  final searchText = ref.watch(searchTextProvider);

  //

  final filtered = (productList.value != null && selectedFilter != null)
      ? filterProduct(
          productList.value ?? [],
          selectedFilter,
        )
      : productList.value ?? [];

  final searched = searchText.isEmpty
      ? filtered
      : filtered
          .where((element) =>
              element.name != null &&
              element.name!.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
  return searched;
}

List<Product> filterProduct(
    List<Product> productList, BottomModalOption selectedFilter) {
  switch (selectedFilter) {
    case BottomModalOption.newest:
      return productList.toList();

    //
    case BottomModalOption.oldest:
      return productList.reversed.toList();

    //
    case BottomModalOption.priceLowToHigh:
      final sortedList = productList.toList();
      sortedList.sort(
        (a, b) => (double.parse(a.price ?? '0'))
            .compareTo(double.parse(b.price ?? '0')),
      );
      return sortedList;

    //
    case BottomModalOption.priceHighToLow:
      final sortedList = productList.toList();
      sortedList.sort(
        (a, b) => (double.parse(b.price ?? '0'))
            .compareTo(double.parse(a.price ?? '0')),
      );
      return sortedList;

    //
    case BottomModalOption.bestSelling:
      return productList.toList();
  }
}
