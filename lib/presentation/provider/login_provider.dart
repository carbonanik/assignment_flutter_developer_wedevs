import 'package:assignment_flutter_developer_wedevs/data/local/auth_data.dart';
import 'package:assignment_flutter_developer_wedevs/data/local/auth_persist_data.dart';
import 'package:assignment_flutter_developer_wedevs/model/login_response.dart';
import 'package:assignment_flutter_developer_wedevs/utils/error_as_value.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'api_provider.dart';

part 'login_provider.g.dart';

@riverpod
class Login extends _$Login {
  void login({
    required String username,
    required String password,
  }) async {
    state = const AsyncValue.loading();
    final api = ref.read(publicApiProvider);
    state = await api
        .login(
          username: username,
          password: password,
        )
        .errorAsValue();
    await AuthPersistData().setAuthData(AuthData(token: state.value!.token!));
  }

  @override
  Future<LoginResponse?> build() async {
    return Future.value(null);
  }
}

@riverpod
bool loginLoading(LoginLoadingRef ref) => ref.watch(loginProvider).isLoading;

@riverpod
loginError(LoginErrorRef ref) =>
    ref.watch(loginProvider).whenOrNull(error: (error, stackTrace) => error);

@riverpod
LoginResponse? loginSuccess(LoginSuccessRef ref) =>
    ref.watch(loginProvider).whenOrNull(data: (value) => value);
