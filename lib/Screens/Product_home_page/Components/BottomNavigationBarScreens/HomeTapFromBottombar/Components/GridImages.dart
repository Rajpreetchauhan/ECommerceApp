import 'package:flutter/material.dart';

class GridImages extends StatelessWidget {
  String imagestring;
  String stacktext;
  final void Function() onpressed;
  GridImages(
      {required this.imagestring,
      required this.stacktext,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.0),
      child: GestureDetector(
        onTap: onpressed,
        child: Stack(
          children: [
            Image.asset(
              imagestring,
              fit: BoxFit.cover,
              height: 150,
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 17),
              child: Text(
                stacktext,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
