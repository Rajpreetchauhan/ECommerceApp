import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final IconData icontype;
  final String text;

  FilterButton({required this.text, required this.icontype});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 110,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xff33907C),
            border: Border.all(width: 1, color: Colors.white)),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              icontype,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
