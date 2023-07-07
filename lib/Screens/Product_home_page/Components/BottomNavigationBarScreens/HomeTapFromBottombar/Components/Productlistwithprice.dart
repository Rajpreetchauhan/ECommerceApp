import 'package:flutter/material.dart';

import '../../../../../../Models/Models.dart';
import 'Productcontainer.dart';

class Productlistwithprice extends StatelessWidget {
  List<ProductlistwithpricelistModel> Productlistwithpricelist = [
    ProductlistwithpricelistModel(
        productimage:
            "images/633feedfce8ec16b1614f321-coca-cola-classic-coke-soft-drink.webp",
        productname: "Coca Cola",
        productprice: 25),
    ProductlistwithpricelistModel(
        productimage:
            "images/633feedfce8ec16b1614f321-coca-cola-classic-coke-soft-drink.webp",
        productname: "Coca Cola",
        productprice: 25),
    ProductlistwithpricelistModel(
        productimage: "images/Screenshot 2023-05-07 074120.png",
        productname: "Coca Cola",
        productprice: 25),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          height: 320,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: Productlistwithpricelist.length,
              itemBuilder: (context, index) {
                return Productcontainer(
                    imagestring: Productlistwithpricelist[index].productimage,
                    productname: Productlistwithpricelist[index].productname,
                    productprice: Productlistwithpricelist[index].productprice);
              }),
        ));
  }
}
