import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'retrofit_models.freezed.dart';
part 'retrofit_models.g.dart';

/// Retrofit response type
@freezed
class RetrofitResponse<T> with _$RetrofitResponse {
  const factory RetrofitResponse.success(T? data, int? code, String? message) = _Success;
  const factory RetrofitResponse.error(String? errorMessage, int? code) = _Error;
}

/// HTTP request data class
@freezed
class SendUserRegister with _$SendUserRegister {
  const factory SendUserRegister({required String email, required String username, required String password}) = _SendUserRegister;
  factory SendUserRegister.fromJson(Map<String, dynamic> json) => _$SendUserRegisterFromJson(json);
}
@freezed
class SendUserLogin with _$SendUserLogin {
  const factory SendUserLogin({required String username, required String password}) = _SendUserLogin;
  factory SendUserLogin.fromJson(Map<String, dynamic> json) => _$SendUserLoginFromJson(json);
}
@freezed
class SendUserUpdateInfo with _$SendUserUpdateInfo {
  const factory SendUserUpdateInfo({required String email, required String username}) = _SendUserUpdateInfo;
  factory SendUserUpdateInfo.fromJson(Map<String, dynamic> json) => _$SendUserUpdateInfoFromJson(json);
}
@freezed
class SendUserUpdatePassword with _$SendUserUpdatePassword {
  const factory SendUserUpdatePassword({required String old_password, required String new_password}) = _SendUserUpdatePassword;
  factory SendUserUpdatePassword.fromJson(Map<String, dynamic> json) => _$SendUserUpdatePasswordFromJson(json);
}

/// HTTP response data class
@freezed
class ResultMessage with _$ResultMessage {
  const factory ResultMessage({required String response, required String message}) = _ResultMessage;
  factory ResultMessage.fromJson(Map<String, dynamic> json) => _$ResultMessageFromJson(json);
}
@freezed
class ResultUserRegisterAndLogin with _$ResultUserRegisterAndLogin {
  const factory ResultUserRegisterAndLogin({
    required String response,
    required String message,
    required int pk,
    required String email,
    required String username,
    required String token,
  }) = _ResultUserRegisterAndLogin;
  factory ResultUserRegisterAndLogin.fromJson(Map<String, dynamic> json) => _$ResultUserRegisterAndLoginFromJson(json);
}
@freezed
class ResultUserUpdateInfo with _$ResultUserUpdateInfo {
  const factory ResultUserUpdateInfo({
    required String response,
    required String message,
    required int pk,
    required String email,
    required String username,
  }) = _ResultUserUpdateInfo;
  factory ResultUserUpdateInfo.fromJson(Map<String, dynamic> json) => _$ResultUserUpdateInfoFromJson(json);
}
@freezed
class ResultUserDetail with _$ResultUserDetail {
  const factory ResultUserDetail({required int pk, required String email, required String username}) = _ResultUserDetail;
  factory ResultUserDetail.fromJson(Map<String, dynamic> json) => _$ResultUserDetailFromJson(json);
}
