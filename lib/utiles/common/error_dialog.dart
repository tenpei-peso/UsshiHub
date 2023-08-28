import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ussihub/presentation/page/first_make_note.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
  super.key,
  });

  static Future<void> show(
      BuildContext context,
      ) async {
    await showDialog<SimpleDialog>(
      context: context,
      builder: (context) {
        return const ErrorDialog();
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
                        'エラーが発生しました',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 250,
                      height: 250,
                      child: Image.asset(
                        'assets/images/caw.png',
                        fit: BoxFit.contain,
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
