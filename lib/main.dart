import 'package:flutter/material.dart';
import 'package:flutter_dev_dome/1_clock/clock_panel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final clockSize = Size(screenWidth * 0.7, screenWidth * 0.7);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(child: Stack(children: <Widget>[ClockPanel(clockSize)])),
    );
  }
}
