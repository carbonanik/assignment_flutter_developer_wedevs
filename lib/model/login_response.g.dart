// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      token: json['token'] as String?,
      userEmail: json['userEmail'] as String?,
      userNicename: json['userNicename'] as String?,
      userDisplayName: json['userDisplayName'] as String?,
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userEmail': instance.userEmail,
      'userNicename': instance.userNicename,
      'userDisplayName': instance.userDisplayName,
    };
