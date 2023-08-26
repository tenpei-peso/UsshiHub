// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_detection_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteDetectionPageState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteDetectionPageStateCopyWith<NoteDetectionPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDetectionPageStateCopyWith<$Res> {
  factory $NoteDetectionPageStateCopyWith(NoteDetectionPageState value,
          $Res Function(NoteDetectionPageState) then) =
      _$NoteDetectionPageStateCopyWithImpl<$Res, NoteDetectionPageState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$NoteDetectionPageStateCopyWithImpl<$Res,
        $Val extends NoteDetectionPageState>
    implements $NoteDetectionPageStateCopyWith<$Res> {
  _$NoteDetectionPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoteDetectionPageStateCopyWith<$Res>
    implements $NoteDetectionPageStateCopyWith<$Res> {
  factory _$$_NoteDetectionPageStateCopyWith(_$_NoteDetectionPageState value,
          $Res Function(_$_NoteDetectionPageState) then) =
      __$$_NoteDetectionPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_NoteDetectionPageStateCopyWithImpl<$Res>
    extends _$NoteDetectionPageStateCopyWithImpl<$Res,
        _$_NoteDetectionPageState>
    implements _$$_NoteDetectionPageStateCopyWith<$Res> {
  __$$_NoteDetectionPageStateCopyWithImpl(_$_NoteDetectionPageState _value,
      $Res Function(_$_NoteDetectionPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_NoteDetectionPageState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NoteDetectionPageState implements _NoteDetectionPageState {
  _$_NoteDetectionPageState({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'NoteDetectionPageState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteDetectionPageState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteDetectionPageStateCopyWith<_$_NoteDetectionPageState> get copyWith =>
      __$$_NoteDetectionPageStateCopyWithImpl<_$_NoteDetectionPageState>(
          this, _$identity);
}

abstract class _NoteDetectionPageState implements NoteDetectionPageState {
  factory _NoteDetectionPageState({final bool isLoading}) =
      _$_NoteDetectionPageState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_NoteDetectionPageStateCopyWith<_$_NoteDetectionPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
