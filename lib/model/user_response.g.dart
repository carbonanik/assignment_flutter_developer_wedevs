// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      name: json['name'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      url: json['url'] as String?,
      description: json['description'] as String?,
      link: json['link'] as String?,
      locale: json['locale'] as String?,
      nickname: json['nickname'] as String?,
      slug: json['slug'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      registeredDate: json['registeredDate'] == null
          ? null
          : DateTime.parse(json['registeredDate'] as String),
      avatarUrls: json['avatarUrls'] == null
          ? null
          : AvatarUrls.fromJson(json['avatarUrls'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'url': instance.url,
      'description': instance.description,
      'link': instance.link,
      'locale': instance.locale,
      'nickname': instance.nickname,
      'slug': instance.slug,
      'roles': instance.roles,
      'registeredDate': instance.registeredDate?.toIso8601String(),
      'avatarUrls': instance.avatarUrls,
      'meta': instance.meta,
    };

_$AvatarUrlsImpl _$$AvatarUrlsImplFromJson(Map<String, dynamic> json) =>
    _$AvatarUrlsImpl(
      the24: json['the24'] as String?,
      the48: json['the48'] as String?,
      the96: json['the96'] as String?,
    );

Map<String, dynamic> _$$AvatarUrlsImplToJson(_$AvatarUrlsImpl instance) =>
    <String, dynamic>{
      'the24': instance.the24,
      'the48': instance.the48,
      'the96': instance.the96,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      persistedPreferences: json['persistedPreferences'] as List<dynamic>?,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'persistedPreferences': instance.persistedPreferences,
    };
