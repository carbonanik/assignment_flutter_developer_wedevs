// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userLoadingHash() => r'2f28d9ff840ae417a0ece98a9deda1227a9ff6ab';

/// See also [userLoading].
@ProviderFor(userLoading)
final userLoadingProvider = AutoDisposeProvider<bool>.internal(
  userLoading,
  name: r'userLoadingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userLoadingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserLoadingRef = AutoDisposeProviderRef<bool>;
String _$userDataHash() => r'ade5a476eb3d9ca7292793b1db3762f64545bb67';

/// See also [UserData].
@ProviderFor(UserData)
final userDataProvider =
    AutoDisposeAsyncNotifierProvider<UserData, UserResponse?>.internal(
  UserData.new,
  name: r'userDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserData = AutoDisposeAsyncNotifier<UserResponse?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
