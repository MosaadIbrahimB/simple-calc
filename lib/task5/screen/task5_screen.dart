import 'package:flutter/material.dart';

import '../model/icon_operation_model.dart';
import '../model/number_and_inc_and_dec_model.dart';

class TaskFive extends StatefulWidget {
  @override
  State<TaskFive> createState() => _TaskFiveState();
}

class _TaskFiveState extends State<TaskFive> {
  int numberOne = 0;
  int numberTwo = 0;
  double res = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text(
          "Calc App",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 60),
            onPressed: () {},
            icon: const Icon(
              Icons.calculate_outlined,
              size: 50,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberAndIncAndDecModel(
                  number: numberOne,
                  inc: () => numberOne = inc(numberOne),
                  dec: () => numberOne = dec(numberOne),
                ),
                const SizedBox(
                  width: 50,
                ),
                NumberAndIncAndDecModel(
                  number: numberTwo,
                  inc: () => numberTwo = inc(numberTwo),
                  dec: () => numberTwo = dec(numberTwo),
                ),
              ],
            ),
            const SizedBox(height: 30),
            IconOperationModel(
                onPress: () {
                  operation('+');
                },
                text: "Addition  +"),
            const SizedBox(height: 10),
            IconOperationModel(
                onPress: () {
                  operation('-');
                },
                text: "Subtraction -"),
            const SizedBox(height: 10),
            IconOperationModel(
                onPress: () {
                  operation('*');
                },
                text: "Multiplication *"),
            const SizedBox(height: 10),
            IconOperationModel(
                onPress: () {
                  operation('/');
                },
                text: "Division /"),
            const SizedBox(height: 15),
            IconOperationModel(
              height: 65,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              onPress: () {},
              text: "Resulte = ${res.toStringAsFixed(2)}",
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  inc(int number) {
    number += 1;
    setState(() {});
    return number;
  }

  dec(int number) {
    number -= 1;
    setState(() {});
    return number;
  }

  operation(String op) {
    switch (op) {
      case '+':
        {
          res = numberOne + numberTwo * 1.0;
        }
        break;
      case '-':
        {
          res = numberOne - numberTwo * 1.0;
        }
        break;
      case '*':
        {
          res = numberOne * numberTwo * 1.0;
        }
        break;
      case '/':
        {
          if (numberTwo == 0) {
            return;
          }
          res = (numberOne / numberTwo * 1.0);
        }
        break;
      default:
        res = 0;
    }
    setState(() {});
  }
}



