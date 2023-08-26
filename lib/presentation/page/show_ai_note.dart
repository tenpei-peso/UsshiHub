import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussihub/domain/repository/notifier/make_note_notifier.dart';

class ShowAiNote extends ConsumerWidget {
  const ShowAiNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final openAiText =
        ref.watch(makeNoteNotifierProvider.select((state) => state.openAiText)) ?? '';

    return Scaffold(
      body: Column(
        children: [
          if (openAiText != '')
            Expanded(
              child: Markdown(
                data: openAiText,
              ),
            ),
          Text('テキストがありません');
        ],
      ),
    );
  }
}