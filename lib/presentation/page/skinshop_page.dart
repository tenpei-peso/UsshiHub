import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ussihub/presentation/page/hiyoko_page.dart';
import 'package:ussihub/presentation/page/library_page.dart';

class SkinshopPage extends StatefulWidget {
  @override
  _SkinshopPageState createState() => _SkinshopPageState();
}

class _SkinshopPageState extends State<SkinshopPage> {
  int? _selectedButtonIndex;

  final List<String> _imageList = [
    'assets/images/cat.png',
    'assets/images/sheep.png',
    'assets/images/rock.png',
    'assets/images/rock.png',
    'assets/images/rock.png',
    'assets/images/rock.png',
  ];

  void _toggleSelection(int index) {
    setState(() {
      if (_selectedButtonIndex == index) {
        _selectedButtonIndex = null;
      } else {
        _selectedButtonIndex = index;
      }
    });
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('確認'),
          content: Text('１個のスキンを購入します。よろしいですか？'),
          actions: <Widget>[
            TextButton(
              child: Text('いいえ'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _selectedButtonIndex = null;
                });
              },
            ),
            TextButton(
              child: Text('はい'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HiyokoPage(),
                ));
                setState(() {
                  _selectedButtonIndex = null;
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
                      onTap: _imageList[index] == 'assets/images/rock.png'
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
                            image: AssetImage(_imageList[index]),
                            fit: BoxFit.cover,
                            colorFilter: _selectedButtonIndex == index
                                ? ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
                                : null,
                          ),
                        ),
                      ),
                    ),
                    FutureBuilder(
                      future: DefaultAssetBundle.of(context).load(_imageList[index]),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/meetmini.png', width: 20, height: 20),
                              SizedBox(width: 5),
                              Text('5'),
                            ],
                          );
                        } else {
                          return SizedBox();  // 画像が読み込まれていない場合は何も表示しない
                        }
                      },
                    ),
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
                  'スキンショップ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LibraryPage()),
                    );
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 100),
                      Image.asset('assets/images/closetIcon.png',width: 40, height: 40),
                    ],
                  ),
                )


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
                ? () {
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
              'お肉で買う',
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
