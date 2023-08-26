import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'make_note_notifier.freezed.dart';

@freezed
class MakeNoteState with _$MakeNoteState {
  factory MakeNoteState({
    @Default('') String fileDataPath,
  }) = _MakeNoteState;
}

final makeNoteNotifierProvider =
StateNotifierProvider<MakeNoteNotifier, MakeNoteState>((ref) {
  return MakeNoteNotifier(ref);
});

class MakeNoteNotifier extends StateNotifier<MakeNoteState> {
  final Ref ref;

  MakeNoteNotifier(this.ref) : super(MakeNoteState()) {
    Future.microtask(() {
      _init();
    });
  }

  final imagePicker = ImagePicker();

  _init() async {

  }

  // ギャラリーから写真を取得するメソッド
  Future<void> getImageFromGarally() async {
    final fileData = await imagePicker.pickImage(source: ImageSource.gallery);
    if (fileData == '') {
      print('画像取得失敗');
      return;
    }
    state = state.copyWith(fileDataPath: fileData!.path);
    print(state.fileDataPath);
  }

}