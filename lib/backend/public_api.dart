import 'package:assignment_flutter_developer_wedevs/model/registration_response.dart';

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
      path: Links.loginUrl,
      payload: {
        "username": username,
        "password": password,
      },
      method: MethodType.post,
      parse: (json) => json,
    );
  }

  Future<RegistrationResponse> registration({
    required String username,
    required String email,
    required String password,
  }) async {
    return await client.request(
      path: Links.registrationUrl,
      payload: {
        "username": username,
        "email": email,
        "password": password,
      },
      method: MethodType.post,
      parse: RegistrationResponse.fromJson,
    );
  }
}
