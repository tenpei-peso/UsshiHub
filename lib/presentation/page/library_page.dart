import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ussihub/presentation/page/home_page.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  int? _selectedButtonIndex;

  // 画像のリストを追加
  final List<String> _imageList = [
    'assets/images/cat.png',
    'assets/images/skelton.PNG',
    'assets/images/skelton.PNG',
    'assets/images/skelton.png',
    'assets/images/skelton.png',
    'assets/images/skelton.png',
  ];

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
          content: Text('このスキンに着替えますか？'),
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
                  builder: (context) => HomePage(),
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
              children: List.generate(6, (index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: _imageList[index] == 'assets/images/skelton.PNG'
                          ? null
                          : () {
                        _toggleSelection(index);
                      },
                      child: Container(
                        width: 160,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          image: DecorationImage(
                            image: AssetImage(_imageList[index]),  // ここで対応する画像を設定
                            fit: BoxFit.cover,
                            colorFilter: _selectedButtonIndex == index
                                ? ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
                                : null,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                );
              }),
            ),
          ),
          Positioned(
            top: 60.0,
            left: 10.0,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_left),
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'クローゼット',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),  // スキンショップテキストとボタンとの間に少しスペースを追加


              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
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
              '着替える',
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
