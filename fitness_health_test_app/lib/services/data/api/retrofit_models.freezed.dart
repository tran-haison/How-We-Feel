// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'retrofit_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RetrofitResponseTearOff {
  const _$RetrofitResponseTearOff();

  _Success<T> success<T>(T? data) {
    return _Success<T>(
      data,
    );
  }

  _Error<T> error<T>(String? errorMessage) {
    return _Error<T>(
      errorMessage,
    );
  }
}

/// @nodoc
const $RetrofitResponse = _$RetrofitResponseTearOff();

/// @nodoc
mixin _$RetrofitResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(String? errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(String? errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetrofitResponseCopyWith<T, $Res> {
  factory $RetrofitResponseCopyWith(
          RetrofitResponse<T> value, $Res Function(RetrofitResponse<T>) then) =
      _$RetrofitResponseCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$RetrofitResponseCopyWithImpl<T, $Res>
    implements $RetrofitResponseCopyWith<T, $Res> {
  _$RetrofitResponseCopyWithImpl(this._value, this._then);

  final RetrofitResponse<T> _value;
  // ignore: unused_field
  final $Res Function(RetrofitResponse<T>) _then;
}

/// @nodoc
abstract class _$SuccessCopyWith<T, $Res> {
  factory _$SuccessCopyWith(
          _Success<T> value, $Res Function(_Success<T>) then) =
      __$SuccessCopyWithImpl<T, $Res>;
  $Res call({T? data});
}

/// @nodoc
class __$SuccessCopyWithImpl<T, $Res>
    extends _$RetrofitResponseCopyWithImpl<T, $Res>
    implements _$SuccessCopyWith<T, $Res> {
  __$SuccessCopyWithImpl(_Success<T> _value, $Res Function(_Success<T>) _then)
      : super(_value, (v) => _then(v as _Success<T>));

  @override
  _Success<T> get _value => super._value as _Success<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Success<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_Success<T> with DiagnosticableTreeMixin implements _Success<T> {
  const _$_Success(this.data);

  @override
  final T? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RetrofitResponse<$T>.success(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RetrofitResponse<$T>.success'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      __$SuccessCopyWithImpl<T, _Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(String? errorMessage) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(String? errorMessage)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements RetrofitResponse<T> {
  const factory _Success(T? data) = _$_Success<T>;

  T? get data;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<T, $Res> {
  factory _$ErrorCopyWith(_Error<T> value, $Res Function(_Error<T>) then) =
      __$ErrorCopyWithImpl<T, $Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class __$ErrorCopyWithImpl<T, $Res>
    extends _$RetrofitResponseCopyWithImpl<T, $Res>
    implements _$ErrorCopyWith<T, $Res> {
  __$ErrorCopyWithImpl(_Error<T> _value, $Res Function(_Error<T>) _then)
      : super(_value, (v) => _then(v as _Error<T>));

  @override
  _Error<T> get _value => super._value as _Error<T>;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_Error<T>(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error<T> with DiagnosticableTreeMixin implements _Error<T> {
  const _$_Error(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RetrofitResponse<$T>.error(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RetrofitResponse<$T>.error'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      __$ErrorCopyWithImpl<T, _Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(String? errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(String? errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements RetrofitResponse<T> {
  const factory _Error(String? errorMessage) = _$_Error<T>;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

SendUserRegister _$SendUserRegisterFromJson(Map<String, dynamic> json) {
  return _SendUserRegister.fromJson(json);
}

/// @nodoc
class _$SendUserRegisterTearOff {
  const _$SendUserRegisterTearOff();

  _SendUserRegister call(
      {required String email,
      required String username,
      required String password}) {
    return _SendUserRegister(
      email: email,
      username: username,
      password: password,
    );
  }

  SendUserRegister fromJson(Map<String, Object?> json) {
    return SendUserRegister.fromJson(json);
  }
}

/// @nodoc
const $SendUserRegister = _$SendUserRegisterTearOff();

/// @nodoc
mixin _$SendUserRegister {
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendUserRegisterCopyWith<SendUserRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendUserRegisterCopyWith<$Res> {
  factory $SendUserRegisterCopyWith(
          SendUserRegister value, $Res Function(SendUserRegister) then) =
      _$SendUserRegisterCopyWithImpl<$Res>;
  $Res call({String email, String username, String password});
}

/// @nodoc
class _$SendUserRegisterCopyWithImpl<$Res>
    implements $SendUserRegisterCopyWith<$Res> {
  _$SendUserRegisterCopyWithImpl(this._value, this._then);

  final SendUserRegister _value;
  // ignore: unused_field
  final $Res Function(SendUserRegister) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SendUserRegisterCopyWith<$Res>
    implements $SendUserRegisterCopyWith<$Res> {
  factory _$SendUserRegisterCopyWith(
          _SendUserRegister value, $Res Function(_SendUserRegister) then) =
      __$SendUserRegisterCopyWithImpl<$Res>;
  @override
  $Res call({String email, String username, String password});
}

/// @nodoc
class __$SendUserRegisterCopyWithImpl<$Res>
    extends _$SendUserRegisterCopyWithImpl<$Res>
    implements _$SendUserRegisterCopyWith<$Res> {
  __$SendUserRegisterCopyWithImpl(
      _SendUserRegister _value, $Res Function(_SendUserRegister) _then)
      : super(_value, (v) => _then(v as _SendUserRegister));

  @override
  _SendUserRegister get _value => super._value as _SendUserRegister;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_SendUserRegister(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendUserRegister
    with DiagnosticableTreeMixin
    implements _SendUserRegister {
  const _$_SendUserRegister(
      {required this.email, required this.username, required this.password});

  factory _$_SendUserRegister.fromJson(Map<String, dynamic> json) =>
      _$$_SendUserRegisterFromJson(json);

  @override
  final String email;
  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SendUserRegister(email: $email, username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SendUserRegister'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendUserRegister &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, username, password);

  @JsonKey(ignore: true)
  @override
  _$SendUserRegisterCopyWith<_SendUserRegister> get copyWith =>
      __$SendUserRegisterCopyWithImpl<_SendUserRegister>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendUserRegisterToJson(this);
  }
}

abstract class _SendUserRegister implements SendUserRegister {
  const factory _SendUserRegister(
      {required String email,
      required String username,
      required String password}) = _$_SendUserRegister;

  factory _SendUserRegister.fromJson(Map<String, dynamic> json) =
      _$_SendUserRegister.fromJson;

  @override
  String get email;
  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$SendUserRegisterCopyWith<_SendUserRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

SendUserLogin _$SendUserLoginFromJson(Map<String, dynamic> json) {
  return _SendUserLogin.fromJson(json);
}

/// @nodoc
class _$SendUserLoginTearOff {
  const _$SendUserLoginTearOff();

  _SendUserLogin call({required String username, required String password}) {
    return _SendUserLogin(
      username: username,
      password: password,
    );
  }

  SendUserLogin fromJson(Map<String, Object?> json) {
    return SendUserLogin.fromJson(json);
  }
}

/// @nodoc
const $SendUserLogin = _$SendUserLoginTearOff();

/// @nodoc
mixin _$SendUserLogin {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendUserLoginCopyWith<SendUserLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendUserLoginCopyWith<$Res> {
  factory $SendUserLoginCopyWith(
          SendUserLogin value, $Res Function(SendUserLogin) then) =
      _$SendUserLoginCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$SendUserLoginCopyWithImpl<$Res>
    implements $SendUserLoginCopyWith<$Res> {
  _$SendUserLoginCopyWithImpl(this._value, this._then);

  final SendUserLogin _value;
  // ignore: unused_field
  final $Res Function(SendUserLogin) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SendUserLoginCopyWith<$Res>
    implements $SendUserLoginCopyWith<$Res> {
  factory _$SendUserLoginCopyWith(
          _SendUserLogin value, $Res Function(_SendUserLogin) then) =
      __$SendUserLoginCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$SendUserLoginCopyWithImpl<$Res>
    extends _$SendUserLoginCopyWithImpl<$Res>
    implements _$SendUserLoginCopyWith<$Res> {
  __$SendUserLoginCopyWithImpl(
      _SendUserLogin _value, $Res Function(_SendUserLogin) _then)
      : super(_value, (v) => _then(v as _SendUserLogin));

  @override
  _SendUserLogin get _value => super._value as _SendUserLogin;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_SendUserLogin(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendUserLogin with DiagnosticableTreeMixin implements _SendUserLogin {
  const _$_SendUserLogin({required this.username, required this.password});

  factory _$_SendUserLogin.fromJson(Map<String, dynamic> json) =>
      _$$_SendUserLoginFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SendUserLogin(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SendUserLogin'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendUserLogin &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  _$SendUserLoginCopyWith<_SendUserLogin> get copyWith =>
      __$SendUserLoginCopyWithImpl<_SendUserLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendUserLoginToJson(this);
  }
}

abstract class _SendUserLogin implements SendUserLogin {
  const factory _SendUserLogin(
      {required String username, required String password}) = _$_SendUserLogin;

  factory _SendUserLogin.fromJson(Map<String, dynamic> json) =
      _$_SendUserLogin.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$SendUserLoginCopyWith<_SendUserLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

SendUserUpdateInfo _$SendUserUpdateInfoFromJson(Map<String, dynamic> json) {
  return _SendUserUpdateInfo.fromJson(json);
}

/// @nodoc
class _$SendUserUpdateInfoTearOff {
  const _$SendUserUpdateInfoTearOff();

  _SendUserUpdateInfo call({required String email, required String username}) {
    return _SendUserUpdateInfo(
      email: email,
      username: username,
    );
  }

  SendUserUpdateInfo fromJson(Map<String, Object?> json) {
    return SendUserUpdateInfo.fromJson(json);
  }
}

/// @nodoc
const $SendUserUpdateInfo = _$SendUserUpdateInfoTearOff();

/// @nodoc
mixin _$SendUserUpdateInfo {
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendUserUpdateInfoCopyWith<SendUserUpdateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendUserUpdateInfoCopyWith<$Res> {
  factory $SendUserUpdateInfoCopyWith(
          SendUserUpdateInfo value, $Res Function(SendUserUpdateInfo) then) =
      _$SendUserUpdateInfoCopyWithImpl<$Res>;
  $Res call({String email, String username});
}

/// @nodoc
class _$SendUserUpdateInfoCopyWithImpl<$Res>
    implements $SendUserUpdateInfoCopyWith<$Res> {
  _$SendUserUpdateInfoCopyWithImpl(this._value, this._then);

  final SendUserUpdateInfo _value;
  // ignore: unused_field
  final $Res Function(SendUserUpdateInfo) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SendUserUpdateInfoCopyWith<$Res>
    implements $SendUserUpdateInfoCopyWith<$Res> {
  factory _$SendUserUpdateInfoCopyWith(
          _SendUserUpdateInfo value, $Res Function(_SendUserUpdateInfo) then) =
      __$SendUserUpdateInfoCopyWithImpl<$Res>;
  @override
  $Res call({String email, String username});
}

/// @nodoc
class __$SendUserUpdateInfoCopyWithImpl<$Res>
    extends _$SendUserUpdateInfoCopyWithImpl<$Res>
    implements _$SendUserUpdateInfoCopyWith<$Res> {
  __$SendUserUpdateInfoCopyWithImpl(
      _SendUserUpdateInfo _value, $Res Function(_SendUserUpdateInfo) _then)
      : super(_value, (v) => _then(v as _SendUserUpdateInfo));

  @override
  _SendUserUpdateInfo get _value => super._value as _SendUserUpdateInfo;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(_SendUserUpdateInfo(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendUserUpdateInfo
    with DiagnosticableTreeMixin
    implements _SendUserUpdateInfo {
  const _$_SendUserUpdateInfo({required this.email, required this.username});

  factory _$_SendUserUpdateInfo.fromJson(Map<String, dynamic> json) =>
      _$$_SendUserUpdateInfoFromJson(json);

  @override
  final String email;
  @override
  final String username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SendUserUpdateInfo(email: $email, username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SendUserUpdateInfo'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendUserUpdateInfo &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, username);

  @JsonKey(ignore: true)
  @override
  _$SendUserUpdateInfoCopyWith<_SendUserUpdateInfo> get copyWith =>
      __$SendUserUpdateInfoCopyWithImpl<_SendUserUpdateInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendUserUpdateInfoToJson(this);
  }
}

abstract class _SendUserUpdateInfo implements SendUserUpdateInfo {
  const factory _SendUserUpdateInfo(
      {required String email,
      required String username}) = _$_SendUserUpdateInfo;

  factory _SendUserUpdateInfo.fromJson(Map<String, dynamic> json) =
      _$_SendUserUpdateInfo.fromJson;

  @override
  String get email;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$SendUserUpdateInfoCopyWith<_SendUserUpdateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

SendUserUpdatePassword _$SendUserUpdatePasswordFromJson(
    Map<String, dynamic> json) {
  return _SendUserUpdatePassword.fromJson(json);
}

/// @nodoc
class _$SendUserUpdatePasswordTearOff {
  const _$SendUserUpdatePasswordTearOff();

  _SendUserUpdatePassword call(
      {required String old_password, required String new_password}) {
    return _SendUserUpdatePassword(
      old_password: old_password,
      new_password: new_password,
    );
  }

  SendUserUpdatePassword fromJson(Map<String, Object?> json) {
    return SendUserUpdatePassword.fromJson(json);
  }
}

/// @nodoc
const $SendUserUpdatePassword = _$SendUserUpdatePasswordTearOff();

/// @nodoc
mixin _$SendUserUpdatePassword {
  String get old_password => throw _privateConstructorUsedError;
  String get new_password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendUserUpdatePasswordCopyWith<SendUserUpdatePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendUserUpdatePasswordCopyWith<$Res> {
  factory $SendUserUpdatePasswordCopyWith(SendUserUpdatePassword value,
          $Res Function(SendUserUpdatePassword) then) =
      _$SendUserUpdatePasswordCopyWithImpl<$Res>;
  $Res call({String old_password, String new_password});
}

/// @nodoc
class _$SendUserUpdatePasswordCopyWithImpl<$Res>
    implements $SendUserUpdatePasswordCopyWith<$Res> {
  _$SendUserUpdatePasswordCopyWithImpl(this._value, this._then);

  final SendUserUpdatePassword _value;
  // ignore: unused_field
  final $Res Function(SendUserUpdatePassword) _then;

  @override
  $Res call({
    Object? old_password = freezed,
    Object? new_password = freezed,
  }) {
    return _then(_value.copyWith(
      old_password: old_password == freezed
          ? _value.old_password
          : old_password // ignore: cast_nullable_to_non_nullable
              as String,
      new_password: new_password == freezed
          ? _value.new_password
          : new_password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SendUserUpdatePasswordCopyWith<$Res>
    implements $SendUserUpdatePasswordCopyWith<$Res> {
  factory _$SendUserUpdatePasswordCopyWith(_SendUserUpdatePassword value,
          $Res Function(_SendUserUpdatePassword) then) =
      __$SendUserUpdatePasswordCopyWithImpl<$Res>;
  @override
  $Res call({String old_password, String new_password});
}

/// @nodoc
class __$SendUserUpdatePasswordCopyWithImpl<$Res>
    extends _$SendUserUpdatePasswordCopyWithImpl<$Res>
    implements _$SendUserUpdatePasswordCopyWith<$Res> {
  __$SendUserUpdatePasswordCopyWithImpl(_SendUserUpdatePassword _value,
      $Res Function(_SendUserUpdatePassword) _then)
      : super(_value, (v) => _then(v as _SendUserUpdatePassword));

  @override
  _SendUserUpdatePassword get _value => super._value as _SendUserUpdatePassword;

  @override
  $Res call({
    Object? old_password = freezed,
    Object? new_password = freezed,
  }) {
    return _then(_SendUserUpdatePassword(
      old_password: old_password == freezed
          ? _value.old_password
          : old_password // ignore: cast_nullable_to_non_nullable
              as String,
      new_password: new_password == freezed
          ? _value.new_password
          : new_password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendUserUpdatePassword
    with DiagnosticableTreeMixin
    implements _SendUserUpdatePassword {
  const _$_SendUserUpdatePassword(
      {required this.old_password, required this.new_password});

  factory _$_SendUserUpdatePassword.fromJson(Map<String, dynamic> json) =>
      _$$_SendUserUpdatePasswordFromJson(json);

  @override
  final String old_password;
  @override
  final String new_password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SendUserUpdatePassword(old_password: $old_password, new_password: $new_password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SendUserUpdatePassword'))
      ..add(DiagnosticsProperty('old_password', old_password))
      ..add(DiagnosticsProperty('new_password', new_password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendUserUpdatePassword &&
            (identical(other.old_password, old_password) ||
                other.old_password == old_password) &&
            (identical(other.new_password, new_password) ||
                other.new_password == new_password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, old_password, new_password);

  @JsonKey(ignore: true)
  @override
  _$SendUserUpdatePasswordCopyWith<_SendUserUpdatePassword> get copyWith =>
      __$SendUserUpdatePasswordCopyWithImpl<_SendUserUpdatePassword>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendUserUpdatePasswordToJson(this);
  }
}

abstract class _SendUserUpdatePassword implements SendUserUpdatePassword {
  const factory _SendUserUpdatePassword(
      {required String old_password,
      required String new_password}) = _$_SendUserUpdatePassword;

  factory _SendUserUpdatePassword.fromJson(Map<String, dynamic> json) =
      _$_SendUserUpdatePassword.fromJson;

  @override
  String get old_password;
  @override
  String get new_password;
  @override
  @JsonKey(ignore: true)
  _$SendUserUpdatePasswordCopyWith<_SendUserUpdatePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultMessage _$ResultMessageFromJson(Map<String, dynamic> json) {
  return _ResultMessage.fromJson(json);
}

/// @nodoc
class _$ResultMessageTearOff {
  const _$ResultMessageTearOff();

  _ResultMessage call({String? response, String? message}) {
    return _ResultMessage(
      response: response,
      message: message,
    );
  }

  ResultMessage fromJson(Map<String, Object?> json) {
    return ResultMessage.fromJson(json);
  }
}

/// @nodoc
const $ResultMessage = _$ResultMessageTearOff();

/// @nodoc
mixin _$ResultMessage {
  String? get response => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultMessageCopyWith<ResultMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultMessageCopyWith<$Res> {
  factory $ResultMessageCopyWith(
          ResultMessage value, $Res Function(ResultMessage) then) =
      _$ResultMessageCopyWithImpl<$Res>;
  $Res call({String? response, String? message});
}

/// @nodoc
class _$ResultMessageCopyWithImpl<$Res>
    implements $ResultMessageCopyWith<$Res> {
  _$ResultMessageCopyWithImpl(this._value, this._then);

  final ResultMessage _value;
  // ignore: unused_field
  final $Res Function(ResultMessage) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ResultMessageCopyWith<$Res>
    implements $ResultMessageCopyWith<$Res> {
  factory _$ResultMessageCopyWith(
          _ResultMessage value, $Res Function(_ResultMessage) then) =
      __$ResultMessageCopyWithImpl<$Res>;
  @override
  $Res call({String? response, String? message});
}

/// @nodoc
class __$ResultMessageCopyWithImpl<$Res>
    extends _$ResultMessageCopyWithImpl<$Res>
    implements _$ResultMessageCopyWith<$Res> {
  __$ResultMessageCopyWithImpl(
      _ResultMessage _value, $Res Function(_ResultMessage) _then)
      : super(_value, (v) => _then(v as _ResultMessage));

  @override
  _ResultMessage get _value => super._value as _ResultMessage;

  @override
  $Res call({
    Object? response = freezed,
    Object? message = freezed,
  }) {
    return _then(_ResultMessage(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultMessage with DiagnosticableTreeMixin implements _ResultMessage {
  const _$_ResultMessage({this.response, this.message});

  factory _$_ResultMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ResultMessageFromJson(json);

  @override
  final String? response;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultMessage(response: $response, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultMessage'))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultMessage &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, message);

  @JsonKey(ignore: true)
  @override
  _$ResultMessageCopyWith<_ResultMessage> get copyWith =>
      __$ResultMessageCopyWithImpl<_ResultMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultMessageToJson(this);
  }
}

abstract class _ResultMessage implements ResultMessage {
  const factory _ResultMessage({String? response, String? message}) =
      _$_ResultMessage;

  factory _ResultMessage.fromJson(Map<String, dynamic> json) =
      _$_ResultMessage.fromJson;

  @override
  String? get response;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$ResultMessageCopyWith<_ResultMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultUserRegisterAndLogin _$ResultUserRegisterAndLoginFromJson(
    Map<String, dynamic> json) {
  return _ResultUserRegisterAndLogin.fromJson(json);
}

/// @nodoc
class _$ResultUserRegisterAndLoginTearOff {
  const _$ResultUserRegisterAndLoginTearOff();

  _ResultUserRegisterAndLogin call(
      {String? response,
      String? message,
      int? pk,
      String? email,
      String? username,
      String? token}) {
    return _ResultUserRegisterAndLogin(
      response: response,
      message: message,
      pk: pk,
      email: email,
      username: username,
      token: token,
    );
  }

  ResultUserRegisterAndLogin fromJson(Map<String, Object?> json) {
    return ResultUserRegisterAndLogin.fromJson(json);
  }
}

/// @nodoc
const $ResultUserRegisterAndLogin = _$ResultUserRegisterAndLoginTearOff();

/// @nodoc
mixin _$ResultUserRegisterAndLogin {
  String? get response => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get pk => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultUserRegisterAndLoginCopyWith<ResultUserRegisterAndLogin>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultUserRegisterAndLoginCopyWith<$Res> {
  factory $ResultUserRegisterAndLoginCopyWith(ResultUserRegisterAndLogin value,
          $Res Function(ResultUserRegisterAndLogin) then) =
      _$ResultUserRegisterAndLoginCopyWithImpl<$Res>;
  $Res call(
      {String? response,
      String? message,
      int? pk,
      String? email,
      String? username,
      String? token});
}

/// @nodoc
class _$ResultUserRegisterAndLoginCopyWithImpl<$Res>
    implements $ResultUserRegisterAndLoginCopyWith<$Res> {
  _$ResultUserRegisterAndLoginCopyWithImpl(this._value, this._then);

  final ResultUserRegisterAndLogin _value;
  // ignore: unused_field
  final $Res Function(ResultUserRegisterAndLogin) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? message = freezed,
    Object? pk = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ResultUserRegisterAndLoginCopyWith<$Res>
    implements $ResultUserRegisterAndLoginCopyWith<$Res> {
  factory _$ResultUserRegisterAndLoginCopyWith(
          _ResultUserRegisterAndLogin value,
          $Res Function(_ResultUserRegisterAndLogin) then) =
      __$ResultUserRegisterAndLoginCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? response,
      String? message,
      int? pk,
      String? email,
      String? username,
      String? token});
}

/// @nodoc
class __$ResultUserRegisterAndLoginCopyWithImpl<$Res>
    extends _$ResultUserRegisterAndLoginCopyWithImpl<$Res>
    implements _$ResultUserRegisterAndLoginCopyWith<$Res> {
  __$ResultUserRegisterAndLoginCopyWithImpl(_ResultUserRegisterAndLogin _value,
      $Res Function(_ResultUserRegisterAndLogin) _then)
      : super(_value, (v) => _then(v as _ResultUserRegisterAndLogin));

  @override
  _ResultUserRegisterAndLogin get _value =>
      super._value as _ResultUserRegisterAndLogin;

  @override
  $Res call({
    Object? response = freezed,
    Object? message = freezed,
    Object? pk = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? token = freezed,
  }) {
    return _then(_ResultUserRegisterAndLogin(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultUserRegisterAndLogin
    with DiagnosticableTreeMixin
    implements _ResultUserRegisterAndLogin {
  const _$_ResultUserRegisterAndLogin(
      {this.response,
      this.message,
      this.pk,
      this.email,
      this.username,
      this.token});

  factory _$_ResultUserRegisterAndLogin.fromJson(Map<String, dynamic> json) =>
      _$$_ResultUserRegisterAndLoginFromJson(json);

  @override
  final String? response;
  @override
  final String? message;
  @override
  final int? pk;
  @override
  final String? email;
  @override
  final String? username;
  @override
  final String? token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultUserRegisterAndLogin(response: $response, message: $message, pk: $pk, email: $email, username: $username, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultUserRegisterAndLogin'))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('pk', pk))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultUserRegisterAndLogin &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pk, pk) || other.pk == pk) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, response, message, pk, email, username, token);

  @JsonKey(ignore: true)
  @override
  _$ResultUserRegisterAndLoginCopyWith<_ResultUserRegisterAndLogin>
      get copyWith => __$ResultUserRegisterAndLoginCopyWithImpl<
          _ResultUserRegisterAndLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultUserRegisterAndLoginToJson(this);
  }
}

abstract class _ResultUserRegisterAndLogin
    implements ResultUserRegisterAndLogin {
  const factory _ResultUserRegisterAndLogin(
      {String? response,
      String? message,
      int? pk,
      String? email,
      String? username,
      String? token}) = _$_ResultUserRegisterAndLogin;

  factory _ResultUserRegisterAndLogin.fromJson(Map<String, dynamic> json) =
      _$_ResultUserRegisterAndLogin.fromJson;

  @override
  String? get response;
  @override
  String? get message;
  @override
  int? get pk;
  @override
  String? get email;
  @override
  String? get username;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$ResultUserRegisterAndLoginCopyWith<_ResultUserRegisterAndLogin>
      get copyWith => throw _privateConstructorUsedError;
}

ResultUserUpdateInfo _$ResultUserUpdateInfoFromJson(Map<String, dynamic> json) {
  return _ResultUserUpdateInfo.fromJson(json);
}

/// @nodoc
class _$ResultUserUpdateInfoTearOff {
  const _$ResultUserUpdateInfoTearOff();

  _ResultUserUpdateInfo call(
      {String? response,
      String? message,
      int? pk,
      String? email,
      String? username}) {
    return _ResultUserUpdateInfo(
      response: response,
      message: message,
      pk: pk,
      email: email,
      username: username,
    );
  }

  ResultUserUpdateInfo fromJson(Map<String, Object?> json) {
    return ResultUserUpdateInfo.fromJson(json);
  }
}

/// @nodoc
const $ResultUserUpdateInfo = _$ResultUserUpdateInfoTearOff();

/// @nodoc
mixin _$ResultUserUpdateInfo {
  String? get response => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get pk => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultUserUpdateInfoCopyWith<ResultUserUpdateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultUserUpdateInfoCopyWith<$Res> {
  factory $ResultUserUpdateInfoCopyWith(ResultUserUpdateInfo value,
          $Res Function(ResultUserUpdateInfo) then) =
      _$ResultUserUpdateInfoCopyWithImpl<$Res>;
  $Res call(
      {String? response,
      String? message,
      int? pk,
      String? email,
      String? username});
}

/// @nodoc
class _$ResultUserUpdateInfoCopyWithImpl<$Res>
    implements $ResultUserUpdateInfoCopyWith<$Res> {
  _$ResultUserUpdateInfoCopyWithImpl(this._value, this._then);

  final ResultUserUpdateInfo _value;
  // ignore: unused_field
  final $Res Function(ResultUserUpdateInfo) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? message = freezed,
    Object? pk = freezed,
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ResultUserUpdateInfoCopyWith<$Res>
    implements $ResultUserUpdateInfoCopyWith<$Res> {
  factory _$ResultUserUpdateInfoCopyWith(_ResultUserUpdateInfo value,
          $Res Function(_ResultUserUpdateInfo) then) =
      __$ResultUserUpdateInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? response,
      String? message,
      int? pk,
      String? email,
      String? username});
}

/// @nodoc
class __$ResultUserUpdateInfoCopyWithImpl<$Res>
    extends _$ResultUserUpdateInfoCopyWithImpl<$Res>
    implements _$ResultUserUpdateInfoCopyWith<$Res> {
  __$ResultUserUpdateInfoCopyWithImpl(
      _ResultUserUpdateInfo _value, $Res Function(_ResultUserUpdateInfo) _then)
      : super(_value, (v) => _then(v as _ResultUserUpdateInfo));

  @override
  _ResultUserUpdateInfo get _value => super._value as _ResultUserUpdateInfo;

  @override
  $Res call({
    Object? response = freezed,
    Object? message = freezed,
    Object? pk = freezed,
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(_ResultUserUpdateInfo(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultUserUpdateInfo
    with DiagnosticableTreeMixin
    implements _ResultUserUpdateInfo {
  const _$_ResultUserUpdateInfo(
      {this.response, this.message, this.pk, this.email, this.username});

  factory _$_ResultUserUpdateInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ResultUserUpdateInfoFromJson(json);

  @override
  final String? response;
  @override
  final String? message;
  @override
  final int? pk;
  @override
  final String? email;
  @override
  final String? username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultUserUpdateInfo(response: $response, message: $message, pk: $pk, email: $email, username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultUserUpdateInfo'))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('pk', pk))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultUserUpdateInfo &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pk, pk) || other.pk == pk) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, response, message, pk, email, username);

  @JsonKey(ignore: true)
  @override
  _$ResultUserUpdateInfoCopyWith<_ResultUserUpdateInfo> get copyWith =>
      __$ResultUserUpdateInfoCopyWithImpl<_ResultUserUpdateInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultUserUpdateInfoToJson(this);
  }
}

abstract class _ResultUserUpdateInfo implements ResultUserUpdateInfo {
  const factory _ResultUserUpdateInfo(
      {String? response,
      String? message,
      int? pk,
      String? email,
      String? username}) = _$_ResultUserUpdateInfo;

  factory _ResultUserUpdateInfo.fromJson(Map<String, dynamic> json) =
      _$_ResultUserUpdateInfo.fromJson;

  @override
  String? get response;
  @override
  String? get message;
  @override
  int? get pk;
  @override
  String? get email;
  @override
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$ResultUserUpdateInfoCopyWith<_ResultUserUpdateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultUserDetail _$ResultUserDetailFromJson(Map<String, dynamic> json) {
  return _ResultUserDetail.fromJson(json);
}

/// @nodoc
class _$ResultUserDetailTearOff {
  const _$ResultUserDetailTearOff();

  _ResultUserDetail call(
      {int? pk, String? email, String? username, String? detail}) {
    return _ResultUserDetail(
      pk: pk,
      email: email,
      username: username,
      detail: detail,
    );
  }

  ResultUserDetail fromJson(Map<String, Object?> json) {
    return ResultUserDetail.fromJson(json);
  }
}

/// @nodoc
const $ResultUserDetail = _$ResultUserDetailTearOff();

/// @nodoc
mixin _$ResultUserDetail {
  int? get pk => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultUserDetailCopyWith<ResultUserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultUserDetailCopyWith<$Res> {
  factory $ResultUserDetailCopyWith(
          ResultUserDetail value, $Res Function(ResultUserDetail) then) =
      _$ResultUserDetailCopyWithImpl<$Res>;
  $Res call({int? pk, String? email, String? username, String? detail});
}

/// @nodoc
class _$ResultUserDetailCopyWithImpl<$Res>
    implements $ResultUserDetailCopyWith<$Res> {
  _$ResultUserDetailCopyWithImpl(this._value, this._then);

  final ResultUserDetail _value;
  // ignore: unused_field
  final $Res Function(ResultUserDetail) _then;

  @override
  $Res call({
    Object? pk = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ResultUserDetailCopyWith<$Res>
    implements $ResultUserDetailCopyWith<$Res> {
  factory _$ResultUserDetailCopyWith(
          _ResultUserDetail value, $Res Function(_ResultUserDetail) then) =
      __$ResultUserDetailCopyWithImpl<$Res>;
  @override
  $Res call({int? pk, String? email, String? username, String? detail});
}

/// @nodoc
class __$ResultUserDetailCopyWithImpl<$Res>
    extends _$ResultUserDetailCopyWithImpl<$Res>
    implements _$ResultUserDetailCopyWith<$Res> {
  __$ResultUserDetailCopyWithImpl(
      _ResultUserDetail _value, $Res Function(_ResultUserDetail) _then)
      : super(_value, (v) => _then(v as _ResultUserDetail));

  @override
  _ResultUserDetail get _value => super._value as _ResultUserDetail;

  @override
  $Res call({
    Object? pk = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? detail = freezed,
  }) {
    return _then(_ResultUserDetail(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultUserDetail
    with DiagnosticableTreeMixin
    implements _ResultUserDetail {
  const _$_ResultUserDetail({this.pk, this.email, this.username, this.detail});

  factory _$_ResultUserDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ResultUserDetailFromJson(json);

  @override
  final int? pk;
  @override
  final String? email;
  @override
  final String? username;
  @override
  final String? detail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultUserDetail(pk: $pk, email: $email, username: $username, detail: $detail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultUserDetail'))
      ..add(DiagnosticsProperty('pk', pk))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('detail', detail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultUserDetail &&
            (identical(other.pk, pk) || other.pk == pk) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pk, email, username, detail);

  @JsonKey(ignore: true)
  @override
  _$ResultUserDetailCopyWith<_ResultUserDetail> get copyWith =>
      __$ResultUserDetailCopyWithImpl<_ResultUserDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultUserDetailToJson(this);
  }
}

abstract class _ResultUserDetail implements ResultUserDetail {
  const factory _ResultUserDetail(
      {int? pk,
      String? email,
      String? username,
      String? detail}) = _$_ResultUserDetail;

  factory _ResultUserDetail.fromJson(Map<String, dynamic> json) =
      _$_ResultUserDetail.fromJson;

  @override
  int? get pk;
  @override
  String? get email;
  @override
  String? get username;
  @override
  String? get detail;
  @override
  @JsonKey(ignore: true)
  _$ResultUserDetailCopyWith<_ResultUserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
