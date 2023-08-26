import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussihub/domain/repository/notifier/make_note_notifier.dart';

import '../../utiles/common/circle_button.dart';

class PreviewMakeNote extends ConsumerWidget {
  const PreviewMakeNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final makeNoteNotifier = ref.watch(makeNoteNotifierProvider.notifier);
    final fileDataPath = ref
        .watch(makeNoteNotifierProvider.select((state) => state.fileDataPath));

    return Scaffold(
        backgroundColor: const Color(0xFFFFF5E0),
        appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          backgroundColor: const Color(0xFFFFF5E0),
          leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              color: Color(0xFF1A0B08), // アイコンの色
              size: 35,
            ), // 任意のアイコンを設定
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'プレビュー',
            style: TextStyle(color: Color(0xFF1A0B08)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 400,
                  child: Image.file(
                    File(fileDataPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PreviewMakeNote()),
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
                  '解析する',
                  style: TextStyle(color: Colors.white), // テキスト色は白色
                ),
              ),
            ],
          ),
        ));
  }
}
