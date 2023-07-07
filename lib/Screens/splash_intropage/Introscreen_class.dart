import 'package:flutter/material.dart';

import 'Components/IntroPageButton.dart';

class Intropage extends StatelessWidget {
  String imagestring;
  String textstring;
  String buttontextstring;
  void Function()? onpressed;
  Intropage({
    required this.onpressed,
    required this.buttontextstring,
    required this.imagestring,
    required this.textstring,
  });
  late double bcontainerheight;
  late double mediaquerywidth;
  late double mediaqueryheight;
  @override
  Widget build(BuildContext context) {
    mediaquerywidth = MediaQuery.of(context).size.width;
    mediaqueryheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: mediaqueryheight * 0.4,
                color: Color(0xff33907C),
              ),
              Container(
                height: mediaqueryheight * 0.6,
                color: Colors.white,
              )
            ],
          ),
          Positioned(
            top: mediaqueryheight / 4.5,
            left: mediaquerywidth / 9,
            right: mediaquerywidth / 9,
            bottom: mediaqueryheight / 3,
            child: Card(
              elevation: 0,
              child: Image.asset(
                imagestring,
                height: 300,
                width: 300,
              ),
            ),
          ),
          Positioned(
            top: mediaqueryheight / 1.5,
            left: mediaquerywidth / 9,
            right: mediaquerywidth / 9,
            child: Text(
              textAlign: TextAlign.center,
              textstring,
              style: TextStyle(
                color: Color(0xff33907C),
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            top: mediaqueryheight / 1.12,
            left: mediaquerywidth / 9,
            right: mediaquerywidth / 9,
            child: SizedBox(
              child: ItroPageButton(
                  onpressed: onpressed, buttontextstring: buttontextstring),
            ),
          )
        ],
      ),
    );
  }
}
