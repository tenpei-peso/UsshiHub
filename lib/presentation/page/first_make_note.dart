import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utiles/common/circle_button.dart';

class FirstMakeNote extends StatelessWidget {
  const FirstMakeNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                CircularIconButton(iconData: Icons.camera_alt, color: const Color(0xff1a0b08) ,onPressed: () {},),
                CircularIconButton(iconData: Icons.image, color: const Color(0xff1a0b08) ,onPressed: () {},),
              ],
            ),
          ),
          ///TODO 取得してきたlist表示
        ],
      ),
    );
  }
}
