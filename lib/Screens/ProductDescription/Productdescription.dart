import 'package:flutter/material.dart';

import '../Product_home_page/Components/BottomNavigationBarScreens/HomeTapFromBottombar/Components/Seeallrow.dart';

class ProductDescription extends StatelessWidget {
  ProductDescription({Key? key}) : super(key: key);

  String Imagestring = "images/Brown-eggs.webp";
  String Textstring = "Coca Cola";
  int finalproductprice = 25;
  int beforeprice = 50;
  int discount = 50;
  String productdesceription =
      "Originally marketed as a temperance drink and intended as a patent medicine it was invented in the late 19th century by John Stith Pemberton in Atlanta Georgia In 1888 Pemberton sold Coca-Cola's ownership rights to Asa Griggs Candler a businessman whose marketing tactics led Coca-Cola to its dominance of the global soft-drink market throughout the 20th and 21st century[4] The drink's name refers to two of its original ingredients coca leaves and kola nuts a source of caffeine[5] The current formula of Coca-Cola remains a closely guarded trade secret however a variety of reported recipes and experimental recreations have been published The secrecy around the formula has been used by Coca-Cola in its marketing as only a handful of anonymous employees know the formula[6] The drink has inspired imitators and created a whole classification of soft drink colas";
  TextStyle categorystyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w300, color: Color(0xff848484));
  TextStyle categorystyleblack =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEEF7),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Image.asset(
              Imagestring,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    Textstring,
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        "\$${finalproductprice.toString()}",
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff33907C)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$${beforeprice.toString()}",
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4E4F4E),
                            decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        "${discount.toString()}%",
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4E4F4E)),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Text(
                        "off",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4E4F4E)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 25),
                child: Row(
                  children: const [
                    CircleAvatar(
                      child: Text("T"),
                      radius: 18,
                      backgroundColor: Color(0xff33907C),
                      foregroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Tradly Store",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 140),
                      child: SeeAllButton(
                        rowbuttontext: "Follow",
                      ),
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                  child: Text(
                productdesceription,
                style: TextStyle(fontSize: 15),
              )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Details",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Condition",
                          style: categorystyle,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Organic",
                          style: categorystyleblack,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Price Type",
                          style: categorystyle,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Fixed",
                          style: categorystyleblack,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Category",
                          style: categorystyle,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Beverages",
                          style: categorystyleblack,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Location",
                          style: categorystyle,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Malaysia",
                          style: categorystyleblack,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Details",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Details",
                        style: categorystyle,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Home Delivery Available, \n Cash On Delivery",
                        style: categorystyleblack,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
