import 'package:flutter/material.dart';

class userdatatextfield extends StatelessWidget {
  String hinttext;
  userdatatextfield({required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
      child: SizedBox(
        height: 45,
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.white)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.red)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.red)),
              hintText: hinttext,
              hintStyle: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
