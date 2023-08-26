import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;
  final Color color;

  const CircularIconButton({super.key, required this.iconData, required this.color ,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color, // ボタンの背景色
        shape: const CircleBorder(), // 丸い形状
        padding: const EdgeInsets.all(24), // ボタンのサイズ
      ),
      onPressed: onPressed,
      child: Icon(
        iconData,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}