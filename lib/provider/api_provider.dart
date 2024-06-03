import 'dart:async';

import 'package:assignment_flutter_developer_wedevs/core/dio_client/dio_client.dart';
import 'package:assignment_flutter_developer_wedevs/backend/api/public_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../backend/api/secure_api.dart';
import '../backend/local/auth_persist_data.dart';
import '../backend/api/links.dart';

part 'api_provider.g.dart';

@riverpod
PublicApi publicApi(PublicApiRef ref) {
  final client = DioClient(baseUrl: Links.baseUrl);
  return PublicApi(client: client);
}

@riverpod
Future<SecureApi> secureApi(SecureApiRef ref) async {
  final client = DioClient(baseUrl: Links.baseUrl);
  final auth = await AuthPersistData().getAuthData();
  client.setToken(auth.token);
  return SecureApi(client: client);
}
