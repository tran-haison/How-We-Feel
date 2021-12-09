// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fitness_health_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _FitnessHealthApi implements FitnessHealthApi {
  _FitnessHealthApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://fitness-health-test-app.herokuapp.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Response<ResultUserRegisterAndLogin>> registerUser(
      sendUserRegister) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(sendUserRegister.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response<ResultUserRegisterAndLogin>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/user/register',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response<ResultUserRegisterAndLogin>.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Response<ResultUserRegisterAndLogin>> loginUser(sendUserLogin) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(sendUserLogin.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response<ResultUserRegisterAndLogin>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/user/login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response<ResultUserRegisterAndLogin>.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Response<ResultUserDetail>> getUserDetail(token) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response<ResultUserDetail>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/user/detail',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response<ResultUserDetail>.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Response<ResultUserUpdateInfo>> updateUserInfo(
      token, sendUserUpdateInfo) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(sendUserUpdateInfo.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response<ResultUserUpdateInfo>>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/user/detail/update',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response<ResultUserUpdateInfo>.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Response<ResultMessage>> updateUserPassword(
      token, sendUserUpdatePassword) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(sendUserUpdatePassword.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response<ResultMessage>>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/user/update_password',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response<ResultMessage>.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
