// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$registrationsLoadingHash() =>
    r'341acd738fae145366b13e3ef433de338503fce9';

/// See also [registrationsLoading].
@ProviderFor(registrationsLoading)
final registrationsLoadingProvider = AutoDisposeProvider<bool>.internal(
  registrationsLoading,
  name: r'registrationsLoadingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$registrationsLoadingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RegistrationsLoadingRef = AutoDisposeProviderRef<bool>;
String _$registrationsErrorHash() =>
    r'f8eaadd289df3ab87d6c72f79785dafdbf91e31b';

/// See also [registrationsError].
@ProviderFor(registrationsError)
final registrationsErrorProvider = AutoDisposeProvider<Object?>.internal(
  registrationsError,
  name: r'registrationsErrorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$registrationsErrorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RegistrationsErrorRef = AutoDisposeProviderRef<Object?>;
String _$registrationsSuccessHash() =>
    r'0aa67926fa26a1d65679539796ad6e75e13d246c';

/// See also [registrationsSuccess].
@ProviderFor(registrationsSuccess)
final registrationsSuccessProvider =
    AutoDisposeProvider<RegistrationResponse?>.internal(
  registrationsSuccess,
  name: r'registrationsSuccessProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$registrationsSuccessHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RegistrationsSuccessRef = AutoDisposeProviderRef<RegistrationResponse?>;
String _$registrationsHash() => r'5817b950f5f968cd34ea0b54c1e7f0e5c42e05b8';

/// See also [Registrations].
@ProviderFor(Registrations)
final registrationsProvider = AutoDisposeAsyncNotifierProvider<Registrations,
    RegistrationResponse?>.internal(
  Registrations.new,
  name: r'registrationsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$registrationsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Registrations = AutoDisposeAsyncNotifier<RegistrationResponse?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
