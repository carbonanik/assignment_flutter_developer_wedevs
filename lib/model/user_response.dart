import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';

part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    int? id,
    String? username,
    String? name,
    @JsonKey(name: "first_name")
    String? firstName,
    @JsonKey(name: "last_name")
    String? lastName,
    String? email,
    String? url,
    String? description,
    String? link,
    String? locale,
    String? nickname,
    String? slug,
    List<String>? roles,
    @JsonKey(name: "registered_date")
    DateTime? registeredDate,
    @JsonKey(name: "avatar_urls")
    AvatarUrls? avatarUrls,
    Meta? meta,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
class AvatarUrls with _$AvatarUrls {
  const factory AvatarUrls({
    @JsonKey(name: "24")
    String? the24,
    @JsonKey(name: "48")
    String? the48,
    @JsonKey(name: "96")
    String? the96,
  }) = _AvatarUrls;

  factory AvatarUrls.fromJson(Map<String, dynamic> json) =>
      _$AvatarUrlsFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: "persisted_preferences")
    List<dynamic>? persistedPreferences,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
