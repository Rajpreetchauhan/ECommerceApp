import 'package:flutter/material.dart';

class Loginsignupbutton extends StatelessWidget {
  String textofbutton;
  void Function() onpressed;
  Loginsignupbutton({required this.textofbutton, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70), color: Colors.white),
      child: TextButton(
          onPressed: onpressed,
          child: Text(
            textofbutton,
            style: TextStyle(color: Color(0xff33907C)),
          )),
    );
  }
}
