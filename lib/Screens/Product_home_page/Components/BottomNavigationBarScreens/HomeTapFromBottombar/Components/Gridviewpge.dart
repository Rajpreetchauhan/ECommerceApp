import 'package:flutter/material.dart';

import '../../../../../../Models/Models.dart';
import '../../../../../GridTapPage/Gridtappage.dart';
import 'GridImages.dart';

class Gridviewpge extends StatelessWidget {
  List<GridImagesModel> Gridimageslist = [
    GridImagesModel(
        gridimage: 'images/Brown-eggs.webp', gridimagetext: "Beverages"),
    GridImagesModel(
        gridimage: 'images/Brown-eggs.webp', gridimagetext: "Beverages"),
    GridImagesModel(
        gridimage: 'images/Brown-eggs.webp', gridimagetext: "Drinks"),
    GridImagesModel(
        gridimage: 'images/Brown-eggs.webp', gridimagetext: "Beverages"),
    GridImagesModel(
        gridimage: 'images/Brown-eggs.webp', gridimagetext: "Beverages"),
    GridImagesModel(
        gridimage: 'images/Brown-eggs.webp', gridimagetext: "Beverages"),
    GridImagesModel(
        gridimage: 'images/Brown-eggs.webp', gridimagetext: "Beverages"),
    GridImagesModel(
        gridimage: 'images/Brown-eggs.webp', gridimagetext: "Beverages"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 210,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 2,
              childAspectRatio: 1.1,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return GridImages(
                imagestring: Gridimageslist[index].gridimage,
                stacktext: Gridimageslist[index].gridimagetext,
                onpressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return GridTapPage(
                      gridtappagename: Gridimageslist[index].gridimagetext,
                    );
                  }));
                },
              );
            }),
      ),
    );
  }
}
