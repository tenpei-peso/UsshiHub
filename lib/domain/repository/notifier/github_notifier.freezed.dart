// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubState {
  Repository? get repositories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubStateCopyWith<GithubState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubStateCopyWith<$Res> {
  factory $GithubStateCopyWith(
          GithubState value, $Res Function(GithubState) then) =
      _$GithubStateCopyWithImpl<$Res, GithubState>;
  @useResult
  $Res call({Repository? repositories});
}

/// @nodoc
class _$GithubStateCopyWithImpl<$Res, $Val extends GithubState>
    implements $GithubStateCopyWith<$Res> {
  _$GithubStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositories = freezed,
  }) {
    return _then(_value.copyWith(
      repositories: freezed == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as Repository?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubStateCopyWith<$Res>
    implements $GithubStateCopyWith<$Res> {
  factory _$$_GithubStateCopyWith(
          _$_GithubState value, $Res Function(_$_GithubState) then) =
      __$$_GithubStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Repository? repositories});
}

/// @nodoc
class __$$_GithubStateCopyWithImpl<$Res>
    extends _$GithubStateCopyWithImpl<$Res, _$_GithubState>
    implements _$$_GithubStateCopyWith<$Res> {
  __$$_GithubStateCopyWithImpl(
      _$_GithubState _value, $Res Function(_$_GithubState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositories = freezed,
  }) {
    return _then(_$_GithubState(
      repositories: freezed == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as Repository?,
    ));
  }
}

/// @nodoc

class _$_GithubState implements _GithubState {
  _$_GithubState({this.repositories});

  @override
  final Repository? repositories;

  @override
  String toString() {
    return 'GithubState(repositories: $repositories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubState &&
            (identical(other.repositories, repositories) ||
                other.repositories == repositories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repositories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubStateCopyWith<_$_GithubState> get copyWith =>
      __$$_GithubStateCopyWithImpl<_$_GithubState>(this, _$identity);
}

abstract class _GithubState implements GithubState {
  factory _GithubState({final Repository? repositories}) = _$_GithubState;

  @override
  Repository? get repositories;
  @override
  @JsonKey(ignore: true)
  _$$_GithubStateCopyWith<_$_GithubState> get copyWith =>
      throw _privateConstructorUsedError;
}
