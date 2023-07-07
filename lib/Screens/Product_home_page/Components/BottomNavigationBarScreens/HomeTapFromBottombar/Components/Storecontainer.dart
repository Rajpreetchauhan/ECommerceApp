import 'package:flutter/material.dart';

class Storecontainer extends StatelessWidget {
  String Storename;
  String storeimage;
  Color storecolor;

  Storecontainer(
      {required this.storecolor,
      required this.storeimage,
      required this.Storename});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
          width: 190,
          child: Card(
            child: Column(
              children: [
                SizedBox(
                    height: 150,
                    child: Image.asset(
                      storeimage,
                      fit: BoxFit.fill,
                      height: 10,
                    )),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  Storename,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xff33907C)),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Follow",
                          style: TextStyle(color: Colors.white),
                        )))
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 120, left: 65),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 37,
            child: CircleAvatar(
              radius: 35,
              child: Text(
                "A",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        )
      ],
    );
  }
}
