import 'package:flutter/material.dart';

class IconOperationModel extends StatelessWidget {
  String text;
  VoidCallback onPress;
  Color color;
  double width;
  double height;
  EdgeInsetsGeometry? padding;
  IconOperationModel(
      {required this.onPress,
        required this.text,
        this.color = Colors.blue,
        this.width = 300,
        this.height = 50,
        this.padding = const EdgeInsets.symmetric(horizontal: 10)});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
