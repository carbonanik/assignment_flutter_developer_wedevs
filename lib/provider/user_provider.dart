import 'package:assignment_flutter_developer_wedevs/utils/error_as_value.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/user_response.dart';
import 'api_provider.dart';

part 'user_provider.g.dart';

@riverpod
class UserProfile extends _$UserProfile {
  Future<bool> updateUser({
    required String firstName,
    required String lastName,
  }) async {
    state = const AsyncValue.loading();
    final api = await ref.read(secureApiProvider.future).errorAsValue();
    final res = await api.value
        ?.updateUser(
          firstName: firstName,
          lastName: lastName,
        )
        .errorAsValue();
    state = res ??
        AsyncValue.error(
          "Error updating user",
          StackTrace.current,
        );
    ref.invalidateSelf();
    return res?.hasValue ?? false;
  }

  @override
  Future<UserResponse?> build() async {
    final api = await ref.read(secureApiProvider.future);
    final res = await api.userMe();
    return res;
  }
}

@riverpod
bool userLoading(UserLoadingRef ref) =>
    ref.watch(userProfileProvider).isLoading;
