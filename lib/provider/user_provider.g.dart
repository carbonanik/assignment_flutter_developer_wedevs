// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userLoadingHash() => r'4e97048a535444b8d70d3fe30c06784bad4bd720';

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
String _$userProfileHash() => r'23eea38c95af93b19c943766a470b73123f5881a';

/// See also [UserProfile].
@ProviderFor(UserProfile)
final userProfileProvider =
    AsyncNotifierProvider<UserProfile, UserResponse?>.internal(
  UserProfile.new,
  name: r'userProfileProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserProfile = AsyncNotifier<UserResponse?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
