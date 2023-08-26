import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussihub/presentation/page/first_make_note.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      body: Stack(children: [
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
                'assets/images/cawImage.png',
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Wrap(
                spacing: 8.0, // 横方向のスペース
                runSpacing: 8.0, // 縦方向のスペース
                alignment: WrapAlignment.center,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: 160,
                    height: 80,
                    child: Card(
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('Card $index', style: const TextStyle(color: Colors.white),),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ]),
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          onPressed: () async {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstMakeNote()),
            );
          },
          tooltip: 'ノート作成',
          child: Image.asset(
            'assets/images/penIcon.png',
            fit: BoxFit.contain,
          ),
          backgroundColor: const Color(0xFF1A0B08),
        ),
      ),
    );
  }
}