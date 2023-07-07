import 'package:flutter/material.dart';

class Homeappbar extends StatelessWidget {
  Homeappbar({required this.titletext});

  final String titletext;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff33907C),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    titletext,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Badge(
                    child: Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xff33907C),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 280,
                      child: TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Product",
                            hintStyle: TextStyle(
                              color: Color(0xffDDDDDC),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
