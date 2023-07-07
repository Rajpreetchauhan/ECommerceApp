import 'package:flutter/material.dart';

import 'Imagecontainer.dart';

class Stackimagecontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Imagecontainer(
            containerimage: "images/istockphoto-589415708-612x612.jpg"),
        Padding(
          padding: EdgeInsets.only(top: 45, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ready To deliver To \n Your Home",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 170,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1.5),
                    borderRadius: BorderRadius.circular(30)),
                child: const Text("Start Shopping",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
              )
            ],
          ),
        )
      ],
    );
  }
}
