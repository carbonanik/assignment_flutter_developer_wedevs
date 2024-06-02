// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$publicApiHash() => r'53cd4daa91f4d713fc8564ac3d87582cdf05b160';

/// See also [publicApi].
@ProviderFor(publicApi)
final publicApiProvider = AutoDisposeProvider<PublicApi>.internal(
  publicApi,
  name: r'publicApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$publicApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PublicApiRef = AutoDisposeProviderRef<PublicApi>;
String _$secureApiHash() => r'c7ae636092c4764b9e67a17036e0b4052ff55a4a';

/// See also [secureApi].
@ProviderFor(secureApi)
final secureApiProvider = AutoDisposeFutureProvider<SecureApi>.internal(
  secureApi,
  name: r'secureApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$secureApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SecureApiRef = AutoDisposeFutureProviderRef<SecureApi>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
