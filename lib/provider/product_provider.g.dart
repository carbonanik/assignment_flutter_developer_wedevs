// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productListHash() => r'7007bb2c9a459c5a127f4b96b238cf7a999a4afc';

/// See also [productList].
@ProviderFor(productList)
final productListProvider = FutureProvider<List<Product>>.internal(
  productList,
  name: r'productListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$productListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductListRef = FutureProviderRef<List<Product>>;
String _$productListWithFilterSearchHash() =>
    r'c00a7470cb7c01010595d2de80c02f0377f4cff1';

/// See also [productListWithFilterSearch].
@ProviderFor(productListWithFilterSearch)
final productListWithFilterSearchProvider =
    AutoDisposeFutureProvider<List<Product>>.internal(
  productListWithFilterSearch,
  name: r'productListWithFilterSearchProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productListWithFilterSearchHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductListWithFilterSearchRef
    = AutoDisposeFutureProviderRef<List<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
