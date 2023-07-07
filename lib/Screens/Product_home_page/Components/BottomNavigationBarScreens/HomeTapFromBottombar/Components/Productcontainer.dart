import 'package:flutter/material.dart';

class Productcontainer extends StatelessWidget {
  String imagestring;
  String productname;
  int productprice;
  Productcontainer(
      {required this.imagestring,
      required this.productname,
      required this.productprice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 150,
              child: Image.asset(imagestring, fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                productname,
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 35,
              width: 180,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xff33907C)),
                      alignment: Alignment.center,
                      child: const Text(
                        "T",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Text(
                    "Tradly",
                    style: TextStyle(color: Color(0xffA7A7A7)),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Text(
                    "\$$productprice",
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff33907C)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
