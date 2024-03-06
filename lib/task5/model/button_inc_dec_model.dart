import 'package:flutter/material.dart';
class ButtonIncDecModel extends StatelessWidget {
  VoidCallback onPress;
  Widget icon;

  ButtonIncDecModel({required this.onPress, required this.icon});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style:
      IconButton.styleFrom(side: const BorderSide(color: Colors.black26),minimumSize:Size(50,50)),
      onPressed: onPress,
      icon: icon,
    );
  }
}
