// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'make_note_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MakeNoteState {
  String get fileDataPath => throw _privateConstructorUsedError;
  String get detectionText => throw _privateConstructorUsedError;
  String get openAiText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MakeNoteStateCopyWith<MakeNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeNoteStateCopyWith<$Res> {
  factory $MakeNoteStateCopyWith(
          MakeNoteState value, $Res Function(MakeNoteState) then) =
      _$MakeNoteStateCopyWithImpl<$Res, MakeNoteState>;
  @useResult
  $Res call({String fileDataPath, String detectionText, String openAiText});
}

/// @nodoc
class _$MakeNoteStateCopyWithImpl<$Res, $Val extends MakeNoteState>
    implements $MakeNoteStateCopyWith<$Res> {
  _$MakeNoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileDataPath = null,
    Object? detectionText = null,
    Object? openAiText = null,
  }) {
    return _then(_value.copyWith(
      fileDataPath: null == fileDataPath
          ? _value.fileDataPath
          : fileDataPath // ignore: cast_nullable_to_non_nullable
              as String,
      detectionText: null == detectionText
          ? _value.detectionText
          : detectionText // ignore: cast_nullable_to_non_nullable
              as String,
      openAiText: null == openAiText
          ? _value.openAiText
          : openAiText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MakeNoteStateCopyWith<$Res>
    implements $MakeNoteStateCopyWith<$Res> {
  factory _$$_MakeNoteStateCopyWith(
          _$_MakeNoteState value, $Res Function(_$_MakeNoteState) then) =
      __$$_MakeNoteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileDataPath, String detectionText, String openAiText});
}

/// @nodoc
class __$$_MakeNoteStateCopyWithImpl<$Res>
    extends _$MakeNoteStateCopyWithImpl<$Res, _$_MakeNoteState>
    implements _$$_MakeNoteStateCopyWith<$Res> {
  __$$_MakeNoteStateCopyWithImpl(
      _$_MakeNoteState _value, $Res Function(_$_MakeNoteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileDataPath = null,
    Object? detectionText = null,
    Object? openAiText = null,
  }) {
    return _then(_$_MakeNoteState(
      fileDataPath: null == fileDataPath
          ? _value.fileDataPath
          : fileDataPath // ignore: cast_nullable_to_non_nullable
              as String,
      detectionText: null == detectionText
          ? _value.detectionText
          : detectionText // ignore: cast_nullable_to_non_nullable
              as String,
      openAiText: null == openAiText
          ? _value.openAiText
          : openAiText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MakeNoteState implements _MakeNoteState {
  _$_MakeNoteState(
      {this.fileDataPath = '', this.detectionText = '', this.openAiText = ''});

  @override
  @JsonKey()
  final String fileDataPath;
  @override
  @JsonKey()
  final String detectionText;
  @override
  @JsonKey()
  final String openAiText;

  @override
  String toString() {
    return 'MakeNoteState(fileDataPath: $fileDataPath, detectionText: $detectionText, openAiText: $openAiText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MakeNoteState &&
            (identical(other.fileDataPath, fileDataPath) ||
                other.fileDataPath == fileDataPath) &&
            (identical(other.detectionText, detectionText) ||
                other.detectionText == detectionText) &&
            (identical(other.openAiText, openAiText) ||
                other.openAiText == openAiText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fileDataPath, detectionText, openAiText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MakeNoteStateCopyWith<_$_MakeNoteState> get copyWith =>
      __$$_MakeNoteStateCopyWithImpl<_$_MakeNoteState>(this, _$identity);
}

abstract class _MakeNoteState implements MakeNoteState {
  factory _MakeNoteState(
      {final String fileDataPath,
      final String detectionText,
      final String openAiText}) = _$_MakeNoteState;

  @override
  String get fileDataPath;
  @override
  String get detectionText;
  @override
  String get openAiText;
  @override
  @JsonKey(ignore: true)
  _$$_MakeNoteStateCopyWith<_$_MakeNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}
