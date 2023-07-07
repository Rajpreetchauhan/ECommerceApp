import 'package:flutter/material.dart';

import 'Models/Models.dart';
import 'Screens/GridTapPage/Components/ProductsGridView.dart';

class WishList extends StatelessWidget {
  List<ProductlistwithpricelistModel> Productlistwithpricelist = [
    ProductlistwithpricelistModel(
        productimage: "images/Brown-eggs.webp",
        productname: "Coca Cola",
        productprice: 25),
    ProductlistwithpricelistModel(
        productimage: "images/Screenshot 2023-05-06 072824.png",
        productname: "Coca Cola",
        productprice: 25),
    ProductlistwithpricelistModel(
        productimage:
            "images/633feedfce8ec16b1614f321-coca-cola-classic-coke-soft-drink.webp",
        productname: "Coca Cola",
        productprice: 25),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 100,
            elevation: 0,
            centerTitle: true,
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w700, fontSize: 25, color: Colors.white),
            title: Text("Whishlist"),
            leading: const BackButton(
              color: Colors.white,
            )),
        body: ProductsGridView(
            Productlistwithpricelist: Productlistwithpricelist));
  }
}
