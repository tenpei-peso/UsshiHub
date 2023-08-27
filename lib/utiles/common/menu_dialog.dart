import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ussihub/presentation/page/first_make_note.dart';

class MenuDialog extends StatelessWidget {
  const MenuDialog({
    super.key,
  });

  static Future<void> show(
    BuildContext context,
  ) async {
    await showDialog<SimpleDialog>(
      context: context,
      builder: (context) {
        return const MenuDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: const Color(0xFFFFF5E0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      children: [
        Stack(
          children: [
            Container(
              width: 350,
              height: 400,
              color: const Color(0xFFFFF5E0),
              child: Expanded(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'コンテンツ',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Expanded(
                      child: ListView(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              leading: Image.asset('assets/images/houseBlack.png'),
                              title: const Text(
                                '牛舎',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const Divider(height: 1,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              leading: Image.asset('assets/images/houseBlack.png'),
                              title: const Text(
                                'スキンショップ',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const Divider(height: 1,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              leading: Image.asset('assets/images/penBlack.png'),
                              title: const Text(
                                '自動ノート作成ツール',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const FirstMakeNote()),
                                );
                              },
                            ),
                          ),
                          const Divider(height: 1,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              leading:
                                  Image.asset('assets/images/infomation.png'),
                              title: const Text(
                                '情報',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const Divider(height: 1,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: InkWell(
                onTap: () async {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.black54,
                  size: 28,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
