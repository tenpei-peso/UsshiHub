import 'dart:io';

import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../presentation/page/preview_make_note.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';


part 'make_note_notifier.freezed.dart';

@freezed
class MakeNoteState with _$MakeNoteState {
  factory MakeNoteState({
    @Default('') String fileDataPath,
    @Default('') String detectionText,
    @Default('') String openAiText,
  }) = _MakeNoteState;
}

final makeNoteNotifierProvider =
StateNotifierProvider.autoDispose<MakeNoteNotifier, MakeNoteState>((ref) {
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
  Future<void> getImageFromGarally(BuildContext context) async {
    final fileData = await imagePicker.pickImage(source: ImageSource.gallery);
    if (fileData == '') {
      print('画像取得失敗');
      return;
    }
    state = state.copyWith(fileDataPath: fileData!.path);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PreviewMakeNote()),
    );
    print(state.fileDataPath);
  }

  Future<void> textDetection() async {
    // XFileをInputImageに変換
    if(state.fileDataPath == "") {
      print('画像選んでない');
      return;
    }

    InputImage inputImage = InputImage.fromFilePath(state.fileDataPath);
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.japanese);

    //画像解析して文字抽出
    final RecognizedText recognizedText = await textRecognizer.processImage(inputImage);
    String text = recognizedText.text;

    if(text.isEmpty) {
      print('からだった');
      return;
    }

    state = state.copyWith(
      detectionText : text,
    );
  }

  Future<void> sendMessageOpenAi () async {
    // メッセージをuserロールでモデル化
    OpenAIChatCompletionModel chatCompletion = await OpenAI.instance.chat.create(
      model: "gpt-3.5-turbo",
      messages: [
        OpenAIChatCompletionChoiceMessageModel(
          content: "${state.detectionText}\n 上記の文章をわかりやすく整理し、また内容を補完してMarkdownで出力 \n 重要単語は強調する \n 見出しや目次も作成する \n 箇条書きを使う\n# 出力フォーマット",
          role: OpenAIChatMessageRole.user,
        ),
      ],
    );
    OpenAIChatCompletionChoiceMessageModel text = chatCompletion.choices.first.message;
    state = state.copyWith(openAiText: text.content);
  }

}