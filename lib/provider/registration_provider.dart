import 'package:assignment_flutter_developer_wedevs/model/registration_response.dart';
import 'package:assignment_flutter_developer_wedevs/utils/error_as_value.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'api_provider.dart';

part 'registration_provider.g.dart';

@riverpod
class Registrations extends _$Registrations {
  void register({
    required String username,
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();
    final api = ref.read(publicApiProvider);
    state = await api
        .registration(
          username: username,
          email: email,
          password: password,
        )
        .errorAsValue();
    print('==================');
    print(state.error.toString());
  }

  @override
  Future<RegistrationResponse?> build() async {
    return Future.value(null);
  }
}

@riverpod
bool registrationsLoading(RegistrationsLoadingRef ref) =>
    ref.watch(registrationsProvider).isLoading;

@riverpod
registrationsError(RegistrationsErrorRef ref) => ref
    .watch(registrationsProvider)
    .whenOrNull(error: (error, stackTrace) => error);

@riverpod
RegistrationResponse? registrationsSuccess(RegistrationsSuccessRef ref) =>
    ref.watch(registrationsProvider).whenOrNull(data: (value) => value);
