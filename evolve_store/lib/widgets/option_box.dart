import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class OptionBox extends StatefulWidget {
  @override
  _OptionBoxState createState() => _OptionBoxState();
}

class _OptionBoxState extends State<OptionBox> {
  @override
  Widget build(BuildContext context) {
    Widget OptionBoxDetail({color: Color}) {
      return Container(
        margin: EdgeInsets.only(right: 10),
        child: Neumorphic(
          style: NeumorphicStyle(
            depth: 10,
            shape: NeumorphicShape.convex,
            surfaceIntensity: 0.9,
          ),
          child: Container(
            width: 25,
            height: 25,
            color: color,
          ),
        ),
      );
    }

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Choose the option:",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: Colors.lightGreen,
                ),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0XFFEFF3F6),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    offset: Offset(6, 2),
                    blurRadius: 6.0,
                    spreadRadius: 3.0),
                BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.9),
                    offset: Offset(-6, -2),
                    blurRadius: 6.0,
                    spreadRadius: 3.0)
              ]),
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              OptionBoxDetail(color: Colors.blueAccent),
              OptionBoxDetail(color: Colors.greenAccent),
              OptionBoxDetail(color: Colors.deepOrangeAccent),
              OptionBoxDetail(color: Colors.black),
              OptionBoxDetail(color: Colors.blueAccent),
              OptionBoxDetail(color: Colors.greenAccent),
            ],
          ),
//          style: NeumorphicStyle(
//            shape: NeumorphicShape.concave,
//            surfaceIntensity: 0.2,
//            intensity: 0.7,
//            depth: 4,
//            color: Color(0xffeef4fb),
//          ),
        )
      ],
    );
  }
}
