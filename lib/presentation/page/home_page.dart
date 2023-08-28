import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussihub/domain/repository/graphql/model/repository.dart';
import 'package:ussihub/domain/repository/graphql/repository/github_repository.dart';
import 'package:ussihub/utiles/common/menu_dialog.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final authNotifier = ref.watch(authNotifierProvider.notifier);

    return FutureBuilder<dynamic>(
      future: fetchRepositories(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasError) {

          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if(snapshot.data == null) {
          return Text('でーたnull');
        }

        return _Body(data: snapshot.data);
      },
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key, this.data = const [],
  });
  final List<Repository> data;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backGroundImage.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        left: 100, // 左からの位置
        bottom: 150, // 上からの位置
        child: Container(
            width: 150,
            height: 250,
            child: Image.asset(
              'assets/images/caw.png',
              fit: BoxFit.contain,
            )
                .animate(onPlay: (controller) => controller.repeat())
                .moveX(
                    duration: const Duration(seconds: 5),
                    begin: -150,
                    end: 50)
                .then(delay: 1500.ms)
                .moveX(
                    duration: const Duration(seconds: 5),
                    begin: 100,
                    end: -100)
                .then(delay: 1500.ms)
                .moveY(
                    duration: const Duration(seconds: 5),
                    begin: 0,
                    end: 100) // 上に移動
                .then(delay: 1500.ms)
                .moveY(
                    duration: const Duration(seconds: 5),
                    begin: 100,
                    end: 0) // 下に移動
                .then(delay: 1500.ms)),
      ),
      Positioned(
          right: 40, // 左からの位置
          bottom: 40,
          child: GestureDetector(
            onTap: () {
              MenuDialog.show(context,);
            },
            child: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(
                'assets/images/menu.png',
                fit: BoxFit.contain,
              ),
            ),
          )
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 110,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Wrap(
              spacing: 12.0, // 横方向のスペース
              runSpacing: 8.0, // 縦方向のスペース
              alignment: WrapAlignment.center,
              children: [
                _HomeCard(contributionList: data, title: '今日'),
                _HomeCard(contributionList: data, title: '先週'),
              ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 50,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffe3dfdc).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset(
                        'assets/images/meat.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const Text(
                      '3',
                      style: TextStyle(
                        color: Color(0xfffff5e0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ]);
  }
}

class _HomeCard extends StatelessWidget {
  const _HomeCard({
    super.key, required this.contributionList, required this.title
  });
  final List<Repository> contributionList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 160,
      child: Card(
        color: const Color(0xffe3dfdc).withOpacity(0.4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80.0),  // ここで角丸の大きさを設定します。
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xfffff5e0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              contributionList.first.contributionCount.toString(),
              style: const TextStyle(
                color: Color(0xfffff5e0),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
