import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussihub/domain/repository/notifier/make_note_notifier.dart';
import 'package:ussihub/presentation/page/sign_in_page.dart';

import '../../utiles/common/circle_button.dart';

class FirstMakeNote extends ConsumerWidget {
  const FirstMakeNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final makeNoteNotifier = ref.watch(makeNoteNotifierProvider.notifier);
    final fileDataPath =
        ref.watch(makeNoteNotifierProvider.select((state) => state.fileDataPath));

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
          '自動でノートを作成する',
          style: TextStyle(color: Color(0xFF1A0B08)),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircularIconButton(
                  iconData: Icons.camera_alt,
                  color: const Color(0xff1a0b08),
                  onPressed: () async {
                    null;
                  },
                ),
                CircularIconButton(
                  iconData: Icons.image,
                  color: const Color(0xff1a0b08),
                  onPressed: () async {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const SignInPage()),
                      // );
                  },
                ),
              ],
            ),
          ),
          ///TODO 取得してきたlist表示
        ],
      ),
    );
  }
}
