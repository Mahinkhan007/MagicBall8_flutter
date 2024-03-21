import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
          backgroundColor: Colors.blue.shade600,
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.blue.shade50,
          ),
          body: MagicBall8(),
        )),
      ),
    );

class MagicBall8 extends StatefulWidget {
  const MagicBall8({super.key});

  @override
  State<MagicBall8> createState() => _MagicBall8State();
}

class _MagicBall8State extends State<MagicBall8> {
  int ballNum = 1;
  void change_ball() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  change_ball();
                },
                child: Image.asset('images/ball$ballNum.png')),
          ),
        ],
      ),
    );
  }
}
