import 'package:flutter/material.dart';

import '../../Models/Models.dart';
import 'Components/FilterButton.dart';
import 'Components/ProductsGridView.dart';

class GridTapPage extends StatelessWidget {
  String gridtappagename;

  GridTapPage({required this.gridtappagename});

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
          title: Text(gridtappagename),
          leading: const BackButton(
            color: Colors.white,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FilterCategories(),
            ProductsGridView(Productlistwithpricelist: Productlistwithpricelist)
          ],
        ),
      ),
    );
  }
}

class FilterCategories extends StatelessWidget {
  const FilterCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      color: Color(0xff33907C),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            width: 10,
          ),
          FilterButton(
            icontype: Icons.sort,
            text: "Sort by",
          ),
          const SizedBox(
            width: 10,
          ),
          FilterButton(
            icontype: Icons.location_city,
            text: "Loaction",
          ),
          const SizedBox(
            width: 10,
          ),
          FilterButton(
            icontype: Icons.category,
            text: "Category",
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
