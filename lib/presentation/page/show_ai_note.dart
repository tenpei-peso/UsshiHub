import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussihub/domain/repository/notifier/make_note_notifier.dart';
import 'package:ussihub/presentation/page/home_page.dart';
import 'package:ussihub/presentation/page/show_ai_note_page_notifier.dart';

class ShowAiNote extends ConsumerWidget {
  const ShowAiNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final openAiText = ref.watch(
            makeNoteNotifierProvider.select((state) => state.openAiText)) ??
        '';
    final isLoading =
        ref.watch(showAiNotePageProvider.select((state) => state.isLoading));

    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (openAiText == '') {
      return const Scaffold(
        body: Center(child: Text('生成に失敗しました')),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E0),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Markdown(
                data: openAiText,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
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
              'ホームに戻る',
              style: TextStyle(color: Colors.white), // テキスト色は白色
            ),
          ),
        ],
      ),
    );
  }
}
