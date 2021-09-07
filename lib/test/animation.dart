
import 'package:flutter/material.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  double left = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    //变速插值
    var curvedAnimation = CurvedAnimation(
        parent: _animationController, curve: Curves.elasticInOut);


    //使用Tween 设置起始值和结束值(默认为0-1)
    var animation = Tween(begin: 0.0, end: 100.0).animate(curvedAnimation);

    _animationController.addListener(() {
      this.setState(() {
        left = animation.value;
      });
      // print("插值：${animation.value}");
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          left: left,
          child: Container(
            color: Colors.red,
            height: 40,
            width: 40,
          ))
    ]);
  }
}
