import 'package:flutter/material.dart';

import 'button_inc_dec_model.dart';
class NumberAndIncAndDecModel extends StatelessWidget {
  NumberAndIncAndDecModel(
      {required this.number, required this.inc, required this.dec});
  int number;
  Function inc;
  VoidCallback dec;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$number",
          style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 20),
        Column(
          children: [
            ButtonIncDecModel(
                onPress: () {
                  inc();
                },
                icon: const Icon(Icons.add,size: 25,)),
            const SizedBox(height: 10,),
            ButtonIncDecModel(
                onPress: dec, icon: const Text("-",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
          ],
        ),
      ],
    );
  }
}
