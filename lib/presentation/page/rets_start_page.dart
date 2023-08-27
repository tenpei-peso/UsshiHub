import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussihub/domain/repository/notifier/auth_notifier.dart';
import 'package:ussihub/presentation/page/home_page.dart';
import 'package:ussihub/presentation/page/sign_in_page.dart';
import 'package:ussihub/presentation/page/sign_in_success_page.dart';

class RetsStartPage extends ConsumerWidget {
  const RetsStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);

    return Scaffold(
      backgroundColor: Color(0xFFFFF5E0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 160,
            ),
            const Text(
              'ようこそ！',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 380,
              width: 380,
              child: Image.asset(
                'assets/images/Welcome300.PNG',
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 64,
              width: 320,
              child: ElevatedButton(
                onPressed: () async {
                  //github認証できたらコメントアウト
                  // await authNotifier.signInWithGitHub();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF1a0b08)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFFFF5E0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
                child: const Text(
                  '登録する',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('アカウントをお持ちですか？'),
                  SizedBox(width: 8,),
                  TextButton(
                    onPressed: () {
                      null;
                    },
                    child: const Text(
                      'ログイン',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
