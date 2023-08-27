import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ussihub/domain/repository/notifier/auth_notifier.dart';
import 'package:ussihub/presentation/page/home_page.dart';

class SignInSucessPage extends ConsumerWidget {
  const SignInSucessPage({Key? key}) : super(key: key);

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
              '登録が完了しました',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 380,
              width: 380,
              child: Image.asset(
                'assets/images/recognition.PNG',
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
                    MaterialPageRoute(
                        builder: (context) => const HomePage()),
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
                  'ホーム画面へ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
