import 'package:flutter/material.dart';

import '../../../Models/Models.dart';
import '../../Product_home_page/Components/BottomNavigationBarScreens/HomeTapFromBottombar/Components/Productcontainer.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
    required this.Productlistwithpricelist,
  });

  final List<ProductlistwithpricelistModel> Productlistwithpricelist;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 650,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 6,
            crossAxisSpacing: 6,
            mainAxisExtent: 310,
          ),
          itemBuilder: (context, index) {
            return Productcontainer(
              imagestring: Productlistwithpricelist[index].productimage,
              productname: Productlistwithpricelist[index].productname,
              productprice: Productlistwithpricelist[index].productprice,
            );
          },
          itemCount: Productlistwithpricelist.length,
        ),
      ),
    );
  }
}
