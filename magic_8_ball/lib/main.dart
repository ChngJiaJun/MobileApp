// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

// BallPage StatelessWidget having Scaffold with AppBar and Ball as body
class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 132, 146, 238),
      appBar: AppBar(
        title: const Center(
          child: Text('Ask Me Anything'),
        ),
        backgroundColor: Color.fromARGB(255, 19, 2, 255),
      ),
      body: const Ball(),
    );
  }
}

// Ball StatefulWidget having Container as body to act as body for Scaffold body in BallPage
class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  // integer to hold ballNumber
  int ballNumber = 0;

  // randomize ballNumber
  void randomize() {
    setState(() {
      ballNumber = Random().nextInt(5);
    });
    // print ballNumber upon clickings
    print('ballNumber: ${ballNumber + 1}');
  }

  @override
  Widget build(BuildContext context) {
    // centralize image
    return Center(
      // make image clickable
      child: GestureDetector(
        onTap: () => randomize(),
        // display ball image
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Image.asset('assets/images/ball${ballNumber + 1}.png'),
        ),
      ),
    );
  }
}
