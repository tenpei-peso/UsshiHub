import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussihub/domain/repository/notifier/auth_notifier.dart';
import 'package:ussihub/presentation/page/cowshed_page.dart';
import 'package:ussihub/domain/repository/graphql/provider/app_provider.dart';
import 'package:ussihub/presentation/page/home_page.dart';


class HiyokoPage extends StatefulWidget {
  @override
  _HiyokoPageState createState() => _HiyokoPageState();
}

class _HiyokoPageState extends State<HiyokoPage> {
  @override
  void initState() {
    super.initState();
    _navigateBackAfterDelay();  // 画面が表示されたらタイマーを開始
  }

  _navigateBackAfterDelay() async {
    await Future.delayed(Duration(milliseconds: 3000));
    if (mounted) {  // ウィジェットがまだツリー上に存在する場合のみ実行
      Navigator.pop(context);  // 前の画面に戻る
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => AppProvider(child: const HomePage())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(  // テキストを上に配置
              '購入しました',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),  // テキストと画像の間にスペースを設ける
            Image.asset('assets/images/piyopiyo.gif'),  // GIFを表示
          ],
        ),
      ),
    );
  }
}







