import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CircleProductImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Positioned(
      top: -(size.height * 0.35),
      left: -(size.width * 0.21),
      child: Neumorphic(
        padding: EdgeInsets.only(
          top: size.height * 0.4,
          left: size.width * 0.35,
          right: size.width * 0.35,
          bottom: 0,
        ),
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.circle(),
          depth: -10,
          intensity: 0.9,
          surfaceIntensity: 0.9,
          shape: NeumorphicShape.flat,
          color: Color(0xffe3edf4),
        ),
        child: Container(
          padding: EdgeInsets.only(bottom: 30),
          width: size.width*0.7,
          height: size.height*0.4,
          color: Colors.transparent,
          child: Image.asset(
            "assets/images/backpack.png",
            height: 150,
            width: 150,
            fit: BoxFit.contain,
            alignment: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}