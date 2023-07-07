import 'package:flutter/material.dart';

import '../../../../../Models/Models.dart';
import '../../../../GridTapPage/Components/ProductsGridView.dart';
import '../../../../GridTapPage/Gridtappage.dart';
import '../HomeTapFromBottombar/Components/Homeappbar.dart';

class BrowseTapFromBottombar extends StatelessWidget {
  BrowseTapFromBottombar({Key? key}) : super(key: key);
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
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Homeappbar(titletext: "Browse"),
        FilterCategories(),
        ProductsGridView(
          Productlistwithpricelist: Productlistwithpricelist,
        )
      ],
    );
  }
}
