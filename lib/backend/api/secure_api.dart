import 'package:assignment_flutter_developer_wedevs/backend/api/links.dart';

import '../../core/dio_client/dio_client.dart';
import '../../core/dio_client/method_types.dart';
import '../../model/user_response.dart' show UserResponse;

class SecureApi {
  final DioClient client;

  SecureApi({required this.client});

  Future<UserResponse> userMe() async {
    return await client.request(
      path: Links.userMeUrl,
      queryParams: {
        "context": "edit",
      },
      method: MethodType.get,
      parse: UserResponse.fromJson,
    );
  }

  Future<UserResponse> updateUser({
    required String firstName,
    required String lastName,
  }) async {
    return await client.request(
      path: Links.userMeUrl,
      method: MethodType.post,
      payload: {
        "first_name": firstName,
        "last_name": lastName,
      },
      parse: UserResponse.fromJson,
    );
  }
}
