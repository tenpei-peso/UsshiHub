import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ussihub/domain/repository/notifier/make_note_notifier.dart';

part 'show_ai_note_page_notifier.freezed.dart';

@freezed
class ShowAiNotePageState with _$ShowAiNotePageState {
  factory ShowAiNotePageState({
    @Default(false) bool isLoading,
  }) = _ShowAiNotePageState;
}

final showAiNotePageProvider =
StateNotifierProvider<ShowAiNotePageNotifier, ShowAiNotePageState>((ref) {
  return ShowAiNotePageNotifier(ref);
});

class ShowAiNotePageNotifier extends StateNotifier<ShowAiNotePageState> {
  final Ref ref;

  ShowAiNotePageNotifier(this.ref) : super(ShowAiNotePageState()) {
    Future.microtask(() {
      _init();
    });
  }

  _init() async {
    state = state.copyWith(isLoading: true);
    final makeNoteNotifier = ref.read(makeNoteNotifierProvider.notifier);
    await makeNoteNotifier.sendMessageOpenAi();
    state = state.copyWith(isLoading: false);
  }
}