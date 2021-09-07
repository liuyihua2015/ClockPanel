import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: 100),
        curve: Curves.elasticIn,
        duration: const Duration(seconds: 3),
        builder: (BuildContext context, double left, Widget? child) {
          return Positioned(
            left: left,
            child: Container(
              width: 40,
              height: 40,
              color: Colors.red,
            ),
          );
        },
        child: const Icon(Icons.aspect_ratio),
      ),
    ]);
  }
}
