import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          title: Center(child: Text("I Am Poor")),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/coal-ore.png'),
          ),
        ),
      ),
    ),
  );
}
