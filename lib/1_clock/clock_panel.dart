import 'package:flutter/material.dart';

class ClockPanel extends StatelessWidget {
  final Size size;

  ClockPanel(this.size);

  Widget getOuterPanel() {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: const Offset(-5.0,-5.0),
            blurRadius: 15.0,
          ),
          BoxShadow(
              color: Color(0xFFBDBDBD),
              offset: const Offset(5.0,5.0),
              blurRadius: 15.0
          ),
        ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        getOuterPanel(),
      ],
    );
  }
}
