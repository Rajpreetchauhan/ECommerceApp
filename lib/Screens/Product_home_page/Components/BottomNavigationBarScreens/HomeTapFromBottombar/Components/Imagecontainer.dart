import 'package:flutter/material.dart';

class Imagecontainer extends StatelessWidget {
  String containerimage;
  Imagecontainer({required this.containerimage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 340,
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(11),
          child: Image.asset(
            containerimage,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
