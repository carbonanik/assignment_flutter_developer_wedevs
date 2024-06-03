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
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      url: json['url'] as String?,
      description: json['description'] as String?,
      link: json['link'] as String?,
      locale: json['locale'] as String?,
      nickname: json['nickname'] as String?,
      slug: json['slug'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      registeredDate: json['registered_date'] == null
          ? null
          : DateTime.parse(json['registered_date'] as String),
      avatarUrls: json['avatar_urls'] == null
          ? null
          : AvatarUrls.fromJson(json['avatar_urls'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'url': instance.url,
      'description': instance.description,
      'link': instance.link,
      'locale': instance.locale,
      'nickname': instance.nickname,
      'slug': instance.slug,
      'roles': instance.roles,
      'registered_date': instance.registeredDate?.toIso8601String(),
      'avatar_urls': instance.avatarUrls,
      'meta': instance.meta,
    };

_$AvatarUrlsImpl _$$AvatarUrlsImplFromJson(Map<String, dynamic> json) =>
    _$AvatarUrlsImpl(
      the24: json['24'] as String?,
      the48: json['48'] as String?,
      the96: json['96'] as String?,
    );

Map<String, dynamic> _$$AvatarUrlsImplToJson(_$AvatarUrlsImpl instance) =>
    <String, dynamic>{
      '24': instance.the24,
      '48': instance.the48,
      '96': instance.the96,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      persistedPreferences: json['persisted_preferences'] as List<dynamic>?,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'persisted_preferences': instance.persistedPreferences,
    };
