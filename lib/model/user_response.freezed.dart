// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  List<String>? get roles => throw _privateConstructorUsedError;
  @JsonKey(name: "registered_date")
  DateTime? get registeredDate => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_urls")
  AvatarUrls? get avatarUrls => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res, UserResponse>;
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? name,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      String? email,
      String? url,
      String? description,
      String? link,
      String? locale,
      String? nickname,
      String? slug,
      List<String>? roles,
      @JsonKey(name: "registered_date") DateTime? registeredDate,
      @JsonKey(name: "avatar_urls") AvatarUrls? avatarUrls,
      Meta? meta});

  $AvatarUrlsCopyWith<$Res>? get avatarUrls;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? link = freezed,
    Object? locale = freezed,
    Object? nickname = freezed,
    Object? slug = freezed,
    Object? roles = freezed,
    Object? registeredDate = freezed,
    Object? avatarUrls = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      registeredDate: freezed == registeredDate
          ? _value.registeredDate
          : registeredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avatarUrls: freezed == avatarUrls
          ? _value.avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as AvatarUrls?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AvatarUrlsCopyWith<$Res>? get avatarUrls {
    if (_value.avatarUrls == null) {
      return null;
    }

    return $AvatarUrlsCopyWith<$Res>(_value.avatarUrls!, (value) {
      return _then(_value.copyWith(avatarUrls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserResponseImplCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$UserResponseImplCopyWith(
          _$UserResponseImpl value, $Res Function(_$UserResponseImpl) then) =
      __$$UserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? name,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      String? email,
      String? url,
      String? description,
      String? link,
      String? locale,
      String? nickname,
      String? slug,
      List<String>? roles,
      @JsonKey(name: "registered_date") DateTime? registeredDate,
      @JsonKey(name: "avatar_urls") AvatarUrls? avatarUrls,
      Meta? meta});

  @override
  $AvatarUrlsCopyWith<$Res>? get avatarUrls;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$UserResponseImplCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res, _$UserResponseImpl>
    implements _$$UserResponseImplCopyWith<$Res> {
  __$$UserResponseImplCopyWithImpl(
      _$UserResponseImpl _value, $Res Function(_$UserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? link = freezed,
    Object? locale = freezed,
    Object? nickname = freezed,
    Object? slug = freezed,
    Object? roles = freezed,
    Object? registeredDate = freezed,
    Object? avatarUrls = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$UserResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      registeredDate: freezed == registeredDate
          ? _value.registeredDate
          : registeredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avatarUrls: freezed == avatarUrls
          ? _value.avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as AvatarUrls?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseImpl implements _UserResponse {
  const _$UserResponseImpl(
      {this.id,
      this.username,
      this.name,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      this.email,
      this.url,
      this.description,
      this.link,
      this.locale,
      this.nickname,
      this.slug,
      final List<String>? roles,
      @JsonKey(name: "registered_date") this.registeredDate,
      @JsonKey(name: "avatar_urls") this.avatarUrls,
      this.meta})
      : _roles = roles;

  factory _$UserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? name;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  final String? email;
  @override
  final String? url;
  @override
  final String? description;
  @override
  final String? link;
  @override
  final String? locale;
  @override
  final String? nickname;
  @override
  final String? slug;
  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "registered_date")
  final DateTime? registeredDate;
  @override
  @JsonKey(name: "avatar_urls")
  final AvatarUrls? avatarUrls;
  @override
  final Meta? meta;

  @override
  String toString() {
    return 'UserResponse(id: $id, username: $username, name: $name, firstName: $firstName, lastName: $lastName, email: $email, url: $url, description: $description, link: $link, locale: $locale, nickname: $nickname, slug: $slug, roles: $roles, registeredDate: $registeredDate, avatarUrls: $avatarUrls, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.registeredDate, registeredDate) ||
                other.registeredDate == registeredDate) &&
            (identical(other.avatarUrls, avatarUrls) ||
                other.avatarUrls == avatarUrls) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      name,
      firstName,
      lastName,
      email,
      url,
      description,
      link,
      locale,
      nickname,
      slug,
      const DeepCollectionEquality().hash(_roles),
      registeredDate,
      avatarUrls,
      meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      __$$UserResponseImplCopyWithImpl<_$UserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseImplToJson(
      this,
    );
  }
}

abstract class _UserResponse implements UserResponse {
  const factory _UserResponse(
      {final int? id,
      final String? username,
      final String? name,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      final String? email,
      final String? url,
      final String? description,
      final String? link,
      final String? locale,
      final String? nickname,
      final String? slug,
      final List<String>? roles,
      @JsonKey(name: "registered_date") final DateTime? registeredDate,
      @JsonKey(name: "avatar_urls") final AvatarUrls? avatarUrls,
      final Meta? meta}) = _$UserResponseImpl;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$UserResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get name;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  String? get email;
  @override
  String? get url;
  @override
  String? get description;
  @override
  String? get link;
  @override
  String? get locale;
  @override
  String? get nickname;
  @override
  String? get slug;
  @override
  List<String>? get roles;
  @override
  @JsonKey(name: "registered_date")
  DateTime? get registeredDate;
  @override
  @JsonKey(name: "avatar_urls")
  AvatarUrls? get avatarUrls;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvatarUrls _$AvatarUrlsFromJson(Map<String, dynamic> json) {
  return _AvatarUrls.fromJson(json);
}

/// @nodoc
mixin _$AvatarUrls {
  @JsonKey(name: "24")
  String? get the24 => throw _privateConstructorUsedError;
  @JsonKey(name: "48")
  String? get the48 => throw _privateConstructorUsedError;
  @JsonKey(name: "96")
  String? get the96 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvatarUrlsCopyWith<AvatarUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarUrlsCopyWith<$Res> {
  factory $AvatarUrlsCopyWith(
          AvatarUrls value, $Res Function(AvatarUrls) then) =
      _$AvatarUrlsCopyWithImpl<$Res, AvatarUrls>;
  @useResult
  $Res call(
      {@JsonKey(name: "24") String? the24,
      @JsonKey(name: "48") String? the48,
      @JsonKey(name: "96") String? the96});
}

/// @nodoc
class _$AvatarUrlsCopyWithImpl<$Res, $Val extends AvatarUrls>
    implements $AvatarUrlsCopyWith<$Res> {
  _$AvatarUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? the24 = freezed,
    Object? the48 = freezed,
    Object? the96 = freezed,
  }) {
    return _then(_value.copyWith(
      the24: freezed == the24
          ? _value.the24
          : the24 // ignore: cast_nullable_to_non_nullable
              as String?,
      the48: freezed == the48
          ? _value.the48
          : the48 // ignore: cast_nullable_to_non_nullable
              as String?,
      the96: freezed == the96
          ? _value.the96
          : the96 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvatarUrlsImplCopyWith<$Res>
    implements $AvatarUrlsCopyWith<$Res> {
  factory _$$AvatarUrlsImplCopyWith(
          _$AvatarUrlsImpl value, $Res Function(_$AvatarUrlsImpl) then) =
      __$$AvatarUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "24") String? the24,
      @JsonKey(name: "48") String? the48,
      @JsonKey(name: "96") String? the96});
}

/// @nodoc
class __$$AvatarUrlsImplCopyWithImpl<$Res>
    extends _$AvatarUrlsCopyWithImpl<$Res, _$AvatarUrlsImpl>
    implements _$$AvatarUrlsImplCopyWith<$Res> {
  __$$AvatarUrlsImplCopyWithImpl(
      _$AvatarUrlsImpl _value, $Res Function(_$AvatarUrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? the24 = freezed,
    Object? the48 = freezed,
    Object? the96 = freezed,
  }) {
    return _then(_$AvatarUrlsImpl(
      the24: freezed == the24
          ? _value.the24
          : the24 // ignore: cast_nullable_to_non_nullable
              as String?,
      the48: freezed == the48
          ? _value.the48
          : the48 // ignore: cast_nullable_to_non_nullable
              as String?,
      the96: freezed == the96
          ? _value.the96
          : the96 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvatarUrlsImpl implements _AvatarUrls {
  const _$AvatarUrlsImpl(
      {@JsonKey(name: "24") this.the24,
      @JsonKey(name: "48") this.the48,
      @JsonKey(name: "96") this.the96});

  factory _$AvatarUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarUrlsImplFromJson(json);

  @override
  @JsonKey(name: "24")
  final String? the24;
  @override
  @JsonKey(name: "48")
  final String? the48;
  @override
  @JsonKey(name: "96")
  final String? the96;

  @override
  String toString() {
    return 'AvatarUrls(the24: $the24, the48: $the48, the96: $the96)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarUrlsImpl &&
            (identical(other.the24, the24) || other.the24 == the24) &&
            (identical(other.the48, the48) || other.the48 == the48) &&
            (identical(other.the96, the96) || other.the96 == the96));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, the24, the48, the96);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarUrlsImplCopyWith<_$AvatarUrlsImpl> get copyWith =>
      __$$AvatarUrlsImplCopyWithImpl<_$AvatarUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvatarUrlsImplToJson(
      this,
    );
  }
}

abstract class _AvatarUrls implements AvatarUrls {
  const factory _AvatarUrls(
      {@JsonKey(name: "24") final String? the24,
      @JsonKey(name: "48") final String? the48,
      @JsonKey(name: "96") final String? the96}) = _$AvatarUrlsImpl;

  factory _AvatarUrls.fromJson(Map<String, dynamic> json) =
      _$AvatarUrlsImpl.fromJson;

  @override
  @JsonKey(name: "24")
  String? get the24;
  @override
  @JsonKey(name: "48")
  String? get the48;
  @override
  @JsonKey(name: "96")
  String? get the96;
  @override
  @JsonKey(ignore: true)
  _$$AvatarUrlsImplCopyWith<_$AvatarUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: "persisted_preferences")
  List<dynamic>? get persistedPreferences => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: "persisted_preferences")
      List<dynamic>? persistedPreferences});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? persistedPreferences = freezed,
  }) {
    return _then(_value.copyWith(
      persistedPreferences: freezed == persistedPreferences
          ? _value.persistedPreferences
          : persistedPreferences // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "persisted_preferences")
      List<dynamic>? persistedPreferences});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? persistedPreferences = freezed,
  }) {
    return _then(_$MetaImpl(
      persistedPreferences: freezed == persistedPreferences
          ? _value._persistedPreferences
          : persistedPreferences // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {@JsonKey(name: "persisted_preferences")
      final List<dynamic>? persistedPreferences})
      : _persistedPreferences = persistedPreferences;

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  final List<dynamic>? _persistedPreferences;
  @override
  @JsonKey(name: "persisted_preferences")
  List<dynamic>? get persistedPreferences {
    final value = _persistedPreferences;
    if (value == null) return null;
    if (_persistedPreferences is EqualUnmodifiableListView)
      return _persistedPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Meta(persistedPreferences: $persistedPreferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            const DeepCollectionEquality()
                .equals(other._persistedPreferences, _persistedPreferences));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_persistedPreferences));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {@JsonKey(name: "persisted_preferences")
      final List<dynamic>? persistedPreferences}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  @JsonKey(name: "persisted_preferences")
  List<dynamic>? get persistedPreferences;
  @override
  @JsonKey(ignore: true)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
