import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ussihub/presentation/page/byebye_page.dart';

class CowshedPage extends StatefulWidget {
  @override
  _CowshedPageState createState() => _CowshedPageState();
}

class _CowshedPageState extends State<CowshedPage> {
  int? _selectedButtonIndex;

  void _toggleSelection(int index) {
    setState(() {
      if (_selectedButtonIndex == index) {
        _selectedButtonIndex = null;  // 選択解除
      } else {
        _selectedButtonIndex = index;  // 新しく選択
      }
    });
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('確認'),
          content: Text('１頭の牛を出荷します。よろしいですか？'),
          actions: <Widget>[
            TextButton(
              child: Text('いいえ'),
              onPressed: () {
                Navigator.of(context).pop();  // AlertDialogを閉じる
                setState(() {
                  _selectedButtonIndex = null; // ボタンの選択を解除
                });
              },
            ),
            TextButton(
              child: Text('はい'),
              onPressed: () {
                Navigator.of(context).pop(); // まず、AlertDialogを閉じる
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ByebyePage(),
                ));
                setState(() {
                  _selectedButtonIndex = null; // ボタンの選択を解除
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E0),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: GridView(
              padding: const EdgeInsets.all(20.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 50.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 1.0,
              ),
              children: List.generate(4, (index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        _toggleSelection(index);
                      },
                      child: Container(
                        width: 160,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          image: DecorationImage(
                            image: AssetImage('assets/images/cawImage.png'),
                            fit: BoxFit.cover,
                            colorFilter: _selectedButtonIndex == index
                                ? ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
                                : null,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Image button ${index + 1} Text'),
                  ],
                );
              }),
            ),
          ),
          Positioned(
            top: 60.0, // 少し上部から離す
            left: 10.0,
            child: Row(  // Rowウィジェットを追加して、戻るボタンとテキストボタンを並べる
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_left),
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  '牛舎',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: SizedBox(
          height: 64,
          width: 320,
          child: ElevatedButton(
            onPressed: _selectedButtonIndex != null
                ? () async {
              _showDialog(context);
            }
                : null,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.grey;
                }
                return const Color(0xFF1a0b08);
              }),
              foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFFF5E0)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
            child: const Text(
              '出荷する',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}