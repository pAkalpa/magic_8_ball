import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: const SafeArea(
        child: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int imageNum = 1;

  void generateMagic8Ball() {
    imageNum = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          child: Image.asset('images/ball$imageNum.png'),
          onPressed: () {
            debugPrint('Image Number: $imageNum');
            setState(() {
              generateMagic8Ball();
            });
          }),
    );
  }
}
