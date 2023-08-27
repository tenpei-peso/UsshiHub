// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  String get email => throw _privateConstructorUsedError;
  String get githubUserName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get githubApiKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String email,
      String githubUserName,
      String password,
      String githubApiKey});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? githubUserName = null,
    Object? password = null,
    Object? githubApiKey = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      githubUserName: null == githubUserName
          ? _value.githubUserName
          : githubUserName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      githubApiKey: null == githubApiKey
          ? _value.githubApiKey
          : githubApiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String githubUserName,
      String password,
      String githubApiKey});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? githubUserName = null,
    Object? password = null,
    Object? githubApiKey = null,
  }) {
    return _then(_$_AuthState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      githubUserName: null == githubUserName
          ? _value.githubUserName
          : githubUserName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      githubApiKey: null == githubApiKey
          ? _value.githubApiKey
          : githubApiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  _$_AuthState(
      {this.email = '',
      this.githubUserName = '',
      this.password = '',
      this.githubApiKey = ''});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String githubUserName;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String githubApiKey;

  @override
  String toString() {
    return 'AuthState(email: $email, githubUserName: $githubUserName, password: $password, githubApiKey: $githubApiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.githubUserName, githubUserName) ||
                other.githubUserName == githubUserName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.githubApiKey, githubApiKey) ||
                other.githubApiKey == githubApiKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, githubUserName, password, githubApiKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {final String email,
      final String githubUserName,
      final String password,
      final String githubApiKey}) = _$_AuthState;

  @override
  String get email;
  @override
  String get githubUserName;
  @override
  String get password;
  @override
  String get githubApiKey;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
