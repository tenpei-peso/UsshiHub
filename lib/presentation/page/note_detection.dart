import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussihub/domain/repository/notifier/make_note_notifier.dart';
import 'package:ussihub/presentation/page/note_detection_page_notifier.dart';
import 'package:ussihub/presentation/page/show_ai_note.dart';

class NoteDetection extends ConsumerWidget {
  const NoteDetection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detectionText =
    ref.watch(makeNoteNotifierProvider.select((state) => state.detectionText));

    final isLoading =
    ref.watch(noteDetectionPageProvider.select((state) => state.isLoading));

    if(isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E0),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24),
                child: Text(detectionText),
              ),
              ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ShowAiNote()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // ボタンの背景色
                  shape: RoundedRectangleBorder( // 丸い形
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  'AIにノートを作ってもらう',
                  style: TextStyle(color: Colors.white), // テキスト色は白色
                ),
              ),
            ],
          )
      ),
    );
  }
}
