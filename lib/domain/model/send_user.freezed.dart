// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendUser _$SendUserFromJson(Map<String, dynamic> json) {
  return _SendUser.fromJson(json);
}

/// @nodoc
mixin _$SendUser {
  String get githubUserName => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get githubApiKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendUserCopyWith<SendUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendUserCopyWith<$Res> {
  factory $SendUserCopyWith(SendUser value, $Res Function(SendUser) then) =
      _$SendUserCopyWithImpl<$Res, SendUser>;
  @useResult
  $Res call(
      {String githubUserName, String uid, String email, String githubApiKey});
}

/// @nodoc
class _$SendUserCopyWithImpl<$Res, $Val extends SendUser>
    implements $SendUserCopyWith<$Res> {
  _$SendUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? githubUserName = null,
    Object? uid = null,
    Object? email = null,
    Object? githubApiKey = null,
  }) {
    return _then(_value.copyWith(
      githubUserName: null == githubUserName
          ? _value.githubUserName
          : githubUserName // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      githubApiKey: null == githubApiKey
          ? _value.githubApiKey
          : githubApiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendUserCopyWith<$Res> implements $SendUserCopyWith<$Res> {
  factory _$$_SendUserCopyWith(
          _$_SendUser value, $Res Function(_$_SendUser) then) =
      __$$_SendUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String githubUserName, String uid, String email, String githubApiKey});
}

/// @nodoc
class __$$_SendUserCopyWithImpl<$Res>
    extends _$SendUserCopyWithImpl<$Res, _$_SendUser>
    implements _$$_SendUserCopyWith<$Res> {
  __$$_SendUserCopyWithImpl(
      _$_SendUser _value, $Res Function(_$_SendUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? githubUserName = null,
    Object? uid = null,
    Object? email = null,
    Object? githubApiKey = null,
  }) {
    return _then(_$_SendUser(
      githubUserName: null == githubUserName
          ? _value.githubUserName
          : githubUserName // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      githubApiKey: null == githubApiKey
          ? _value.githubApiKey
          : githubApiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendUser implements _SendUser {
  const _$_SendUser(
      {required this.githubUserName,
      required this.uid,
      required this.email,
      required this.githubApiKey});

  factory _$_SendUser.fromJson(Map<String, dynamic> json) =>
      _$$_SendUserFromJson(json);

  @override
  final String githubUserName;
  @override
  final String uid;
  @override
  final String email;
  @override
  final String githubApiKey;

  @override
  String toString() {
    return 'SendUser(githubUserName: $githubUserName, uid: $uid, email: $email, githubApiKey: $githubApiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendUser &&
            (identical(other.githubUserName, githubUserName) ||
                other.githubUserName == githubUserName) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.githubApiKey, githubApiKey) ||
                other.githubApiKey == githubApiKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, githubUserName, uid, email, githubApiKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendUserCopyWith<_$_SendUser> get copyWith =>
      __$$_SendUserCopyWithImpl<_$_SendUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendUserToJson(
      this,
    );
  }
}

abstract class _SendUser implements SendUser {
  const factory _SendUser(
      {required final String githubUserName,
      required final String uid,
      required final String email,
      required final String githubApiKey}) = _$_SendUser;

  factory _SendUser.fromJson(Map<String, dynamic> json) = _$_SendUser.fromJson;

  @override
  String get githubUserName;
  @override
  String get uid;
  @override
  String get email;
  @override
  String get githubApiKey;
  @override
  @JsonKey(ignore: true)
  _$$_SendUserCopyWith<_$_SendUser> get copyWith =>
      throw _privateConstructorUsedError;
}
