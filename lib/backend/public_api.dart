import 'dio_client.dart';
import 'links.dart';
import 'method_types.dart';

class PublicApi {
  final DioClient client;

  PublicApi({required this.client});

  Future login({
    required String username,
    required String password,
  }) async {
    return await client.request(
      path: Links.login,
      payload: {
        "username": username,
        "password": password,
      },
      method: MethodType.post,
      parse: (json) => json,
    );
  }

  Future registration({
    required String username,
    required String email,
    required String password,
  }) async {
    return await client.request(
      path: Links.registration,
      payload: {
        "username": username,
        "email": email,
        "password": password,
      },
      method: MethodType.post,
      parse: (json) => json,
    );
  }
}
