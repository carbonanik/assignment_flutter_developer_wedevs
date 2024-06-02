import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_response.freezed.dart';

part 'registration_response.g.dart';

@freezed
class RegistrationResponse with _$RegistrationResponse {
  const factory RegistrationResponse({
    int? code,
    String? message,
  }) = _RegistrationResponse;

  factory RegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseFromJson(json);
}
