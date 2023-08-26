// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_ai_note_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShowAiNotePageState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowAiNotePageStateCopyWith<ShowAiNotePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowAiNotePageStateCopyWith<$Res> {
  factory $ShowAiNotePageStateCopyWith(
          ShowAiNotePageState value, $Res Function(ShowAiNotePageState) then) =
      _$ShowAiNotePageStateCopyWithImpl<$Res, ShowAiNotePageState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$ShowAiNotePageStateCopyWithImpl<$Res, $Val extends ShowAiNotePageState>
    implements $ShowAiNotePageStateCopyWith<$Res> {
  _$ShowAiNotePageStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ShowAiNotePageStateCopyWith<$Res>
    implements $ShowAiNotePageStateCopyWith<$Res> {
  factory _$$_ShowAiNotePageStateCopyWith(_$_ShowAiNotePageState value,
          $Res Function(_$_ShowAiNotePageState) then) =
      __$$_ShowAiNotePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_ShowAiNotePageStateCopyWithImpl<$Res>
    extends _$ShowAiNotePageStateCopyWithImpl<$Res, _$_ShowAiNotePageState>
    implements _$$_ShowAiNotePageStateCopyWith<$Res> {
  __$$_ShowAiNotePageStateCopyWithImpl(_$_ShowAiNotePageState _value,
      $Res Function(_$_ShowAiNotePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_ShowAiNotePageState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowAiNotePageState implements _ShowAiNotePageState {
  _$_ShowAiNotePageState({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ShowAiNotePageState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowAiNotePageState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowAiNotePageStateCopyWith<_$_ShowAiNotePageState> get copyWith =>
      __$$_ShowAiNotePageStateCopyWithImpl<_$_ShowAiNotePageState>(
          this, _$identity);
}

abstract class _ShowAiNotePageState implements ShowAiNotePageState {
  factory _ShowAiNotePageState({final bool isLoading}) = _$_ShowAiNotePageState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ShowAiNotePageStateCopyWith<_$_ShowAiNotePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
