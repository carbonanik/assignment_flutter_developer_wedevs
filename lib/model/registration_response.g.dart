// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationResponseImpl _$$RegistrationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationResponseImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$RegistrationResponseImplToJson(
        _$RegistrationResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
