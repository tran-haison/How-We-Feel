// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrofit_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SendUserRegister _$$_SendUserRegisterFromJson(Map<String, dynamic> json) =>
    _$_SendUserRegister(
      email: json['email'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_SendUserRegisterToJson(_$_SendUserRegister instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
    };

_$_SendUserLogin _$$_SendUserLoginFromJson(Map<String, dynamic> json) =>
    _$_SendUserLogin(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_SendUserLoginToJson(_$_SendUserLogin instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$_SendUserUpdateInfo _$$_SendUserUpdateInfoFromJson(
        Map<String, dynamic> json) =>
    _$_SendUserUpdateInfo(
      email: json['email'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_SendUserUpdateInfoToJson(
        _$_SendUserUpdateInfo instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
    };

_$_SendUserUpdatePassword _$$_SendUserUpdatePasswordFromJson(
        Map<String, dynamic> json) =>
    _$_SendUserUpdatePassword(
      old_password: json['old_password'] as String,
      new_password: json['new_password'] as String,
    );

Map<String, dynamic> _$$_SendUserUpdatePasswordToJson(
        _$_SendUserUpdatePassword instance) =>
    <String, dynamic>{
      'old_password': instance.old_password,
      'new_password': instance.new_password,
    };

_$_ResultMessage _$$_ResultMessageFromJson(Map<String, dynamic> json) =>
    _$_ResultMessage(
      response: json['response'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ResultMessageToJson(_$_ResultMessage instance) =>
    <String, dynamic>{
      'response': instance.response,
      'message': instance.message,
    };

_$_ResultUserInfo _$$_ResultUserInfoFromJson(Map<String, dynamic> json) =>
    _$_ResultUserInfo(
      pk: json['pk'] as int?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_ResultUserInfoToJson(_$_ResultUserInfo instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'email': instance.email,
      'username': instance.username,
      'token': instance.token,
    };
