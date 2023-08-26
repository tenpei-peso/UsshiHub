import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ussihub/domain/repository/notifier/make_note_notifier.dart';

part 'note_detection_page_notifier.freezed.dart';

@freezed
class NoteDetectionPageState with _$NoteDetectionPageState {
  factory NoteDetectionPageState({
    @Default(false) bool isLoading,
  }) = _NoteDetectionPageState;
}

final noteDetectionPageProvider =
StateNotifierProvider<NoteDetectionPageNotifier, NoteDetectionPageState>((ref) {
  return NoteDetectionPageNotifier(ref);
});

class NoteDetectionPageNotifier extends StateNotifier<NoteDetectionPageState> {
  final Ref ref;

  NoteDetectionPageNotifier(this.ref) : super(NoteDetectionPageState()) {
    Future.microtask(() {
      _init();
    });
  }

  _init() async {
    state = state.copyWith(isLoading: true);
    final makeNoteNotifier = ref.read(makeNoteNotifierProvider.notifier);
    await makeNoteNotifier.textDetection();
    state = state.copyWith(isLoading: false);
  }
}