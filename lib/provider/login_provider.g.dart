// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginLoadingHash() => r'fe61237a56886f1bce146c010c0cc24ead771497';

/// See also [loginLoading].
@ProviderFor(loginLoading)
final loginLoadingProvider = AutoDisposeProvider<bool>.internal(
  loginLoading,
  name: r'loginLoadingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginLoadingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LoginLoadingRef = AutoDisposeProviderRef<bool>;
String _$loginErrorHash() => r'2985703e61f3e8a7fe73b6983666f9aa57bbce12';

/// See also [loginError].
@ProviderFor(loginError)
final loginErrorProvider = AutoDisposeProvider<Object?>.internal(
  loginError,
  name: r'loginErrorProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginErrorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LoginErrorRef = AutoDisposeProviderRef<Object?>;
String _$loginSuccessHash() => r'f42e024664737d1530086abd265bbdcf4ed0e88c';

/// See also [loginSuccess].
@ProviderFor(loginSuccess)
final loginSuccessProvider = AutoDisposeProvider<LoginResponse?>.internal(
  loginSuccess,
  name: r'loginSuccessProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginSuccessHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LoginSuccessRef = AutoDisposeProviderRef<LoginResponse?>;
String _$loginHash() => r'e06b569162747697a8fe6b6a4a9ca526362b58f9';

/// See also [Login].
@ProviderFor(Login)
final loginProvider =
    AutoDisposeAsyncNotifierProvider<Login, LoginResponse?>.internal(
  Login.new,
  name: r'loginProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Login = AutoDisposeAsyncNotifier<LoginResponse?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
