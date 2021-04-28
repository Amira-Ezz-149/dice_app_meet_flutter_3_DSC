import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
      ),
      body: SizedBox(
        child: FlatButton(
          color: Colors.indigoAccent,
          child: Image(
            image: AssetImage(
              'images/dice$_counter.png',
            ),
            //fit: BoxFit.contain,
            width: double.infinity,
            height: double.infinity,
          ),
          onPressed: () {
            setState(() {
              _counter = Random().nextInt(6) + 1;
            });
          },
        ),
      ),
    );
  }
}
