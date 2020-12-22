import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Colors.blue[800],
        ),
        body: BallApp(),
      ),
    );
  }
}

class BallApp extends StatefulWidget {
  @override
  _BallAppState createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
  int result = 1;

  void changeBall() {
    setState(() {
      result = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text(
              'Good Luck\nTouch the Ball\n\nPower by Nein Chan',
              maxLines: 20,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            child: Expanded(
              child: FlatButton(
                onPressed: () {
                  changeBall();
                },
                child: Image.asset('images/ans$result.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
