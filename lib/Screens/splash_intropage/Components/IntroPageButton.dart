import 'package:flutter/material.dart';

class ItroPageButton extends StatelessWidget {
  const ItroPageButton(
      {super.key,
      required this.onpressed,
      required this.buttontextstring,
      this.bHeight = 50,
      this.bWidth = 350,
      this.bgColor = const Color(0xff33907C)});
  final Color bgColor;
  final double bHeight;
  final double bWidth;

  final void Function()? onpressed;
  final String buttontextstring;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bHeight,
      width: bWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xff33907C),
      ),
      child: TextButton(
        onPressed: onpressed,
        child: Text(
          buttontextstring,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
