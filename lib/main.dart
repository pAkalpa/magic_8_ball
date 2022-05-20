import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Magic 8 Ball'),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: const SafeArea(
          child: M8BallApp(),
        ),
      ),
    ),
  );
}

class M8BallApp extends StatefulWidget {
  const M8BallApp({Key? key}) : super(key: key);

  @override
  State<M8BallApp> createState() => _M8BallAppState();
}

class _M8BallAppState extends State<M8BallApp> {
  int imageNum = 1;

  void generateMagic8Ball() {
    imageNum = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
                child: Image.asset('images/ball$imageNum.png'),
                onPressed: () {
                  debugPrint('Image Number: $imageNum');
                  setState(() {
                    generateMagic8Ball();
                  });
                }),
          ),
        ],
      ),
    );
  }
}
