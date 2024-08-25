import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int lotteryNumber = 4;
  int myNumber = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Lottery App',
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Lottery winning number is',
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              lotteryNumber.toString(),
            ),
            Container(
              height: 250,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    lotteryNumber == myNumber
                        ? Icons.check_circle
                        : Icons.error,
                    color:
                        lotteryNumber == myNumber ? Colors.green : Colors.red,
                    size: 35,
                  ),
                  Text(lotteryNumber == myNumber
                      ? 'Congratulations you have won the lottery, \n your number is $myNumber '
                      : 'Better luck next time your number is $myNumber, \n Try Again',
                  textAlign: TextAlign.center,)
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              myNumber = Random().nextInt(10);
              setState(() {

              });
            },
            backgroundColor: Colors.blueAccent,
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
            )),
      ),
    );
  }
}
